# Code to intercept outputted audio and provide visualizations from it
# Heavily inspired by https://github.com/scottlawsonbc/audio-reactive-led-strip/blob/master/python/visualization.py

import pyaudio
import numpy as np
from scipy import signal
from scipy.fft import rfft, rfftfreq
import asyncio

from termcolor import cprint
from time import sleep

import random
import board
import neopixel

import mute_alsa  # This just mutes some annoying messages from ALSA

import asyncio
import zmq
import zmq.asyncio

from visualizations.bars import BarsVisualization
from visualizations.colors import ColorVisualization
from visualizations.pulse import PulseVisualization


num_LEDs = 150  # Number of LEDs used
pixels = neopixel.NeoPixel(board.D18, num_LEDs, auto_write=False)

fs = 44100  # Samples per second
channels = 1  # We only really need mono audio
refresh_rate = 90  # LED updates per second
chunk = int(fs / refresh_rate)      # Samples per frame

y_roll = np.random.rand(10, chunk) / 1e16


pulse_visualization = PulseVisualization(fs, chunk, num_LEDs)
bars_visualization = BarsVisualization(fs, chunk, num_LEDs)
color_visualization = ColorVisualization(fs, chunk, num_LEDs)


def start_stream(callback):
    p = pyaudio.PyAudio()  # Create an interface to PortAudio

    device_name = "pulse_monitor"  # Name of input device
    device_index = -1  # Will be set when name is searched for

    # Find device by name
    for i in range(p.get_device_count()):
        dev = p.get_device_info_by_index(i)
        if (dev['name'] == device_name):
            device_index = i
            break

    if (device_index == -1):
        raise RuntimeError(f"Unable to find {device_name} device")
    else:
        print(f"Found {device_name} device")

    # Open a Stream with the values we just defined
    stream = p.open(format=pyaudio.paInt16,
                    channels=channels,  # We only need one channel
                    rate=fs,
                    frames_per_buffer=chunk,
                    input_device_index=device_index,
                    input=True)

    i = 0
    while True:
        try:
            # print("Before frombuffer")
            data = np.frombuffer(stream.read(chunk, exception_on_overflow=True), dtype=np.int16)
            data = data.astype(np.float32)
            stream.read(stream.get_read_available(), exception_on_overflow=False)

            # Process the audio

            N = len(data)

            data *= np.hamming(N)

            mags = np.abs(rfft(data))
            mags = (2.0 / N) * np.abs(mags[:N//2])

            callback(mags)  # The caller can do whatever they want with this data
        except IOError:
            print("Overflow detected")

    # Stop and close the Stream and PyAudio
    stream.stop_stream()
    stream.close()
    p.terminate()


current_visualization = color_visualization


def stream_callback(mags):
    global current_visualization
    new_pixels = current_visualization.update(mags)
    pixels[::] = new_pixels
    pixels.show()


async def zmq_listener():
    global current_visualization, pulse_visualization, bars_visualization
    # Listener for Alexa to change LED mode
    ctx = zmq.asyncio.Context()
    vsock = ctx.socket(zmq.PULL)
    vsock.connect("tcp://127.0.0.1:9001")
    while True:
        try:
            msg = await vsock.recv()  # waits for msg to be ready
            msg = msg.decode()
            if msg == "Pulse":
                current_visualization = pulse_visualization
                cprint("Successfully updated visualization mode to PULSE", "green")
            elif msg == "Bars":
                current_visualization = bars_visualization
                cprint("Successfully updated visualization mode to BARS", "green")
            else:
                raise RuntimeError(f"Not a valid visualization mode: {msg}")
        except Exception as e:
            cprint("Error in zmq recv, visualize.py", "red")
            print(e)

        await asyncio.sleep(0.5)


if __name__ == "__main__":
    start_stream(bars_visualization)


async def run_visualize(loop):
    cprint("Starting visualize.py", "cyan")

    loop.run_in_executor(None, start_stream, stream_callback)
    await loop.create_task(zmq_listener())
    print("Done")
    # await loop.create_future()
