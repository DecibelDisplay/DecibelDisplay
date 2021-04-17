# Code to intercept Bluetooth audio and provide values to callback function
# Heavily inspired by https://github.com/scottlawsonbc/audio-reactive-led-strip/blob/master/python/microphone.py

import pyaudio
import numpy as np
from scipy import signal
from scipy.fft import rfft, rfftfreq
from sklearn import preprocessing
import asyncio

import board
import neopixel
from colorzero import Color

num_LEDs = 150 # Number of LEDs used
pixels = neopixel.NeoPixel(board.D18, num_LEDs, auto_write=False)

fs = 44100 # Samples per second
channels = 1 # We only really need mono audio
refresh_rate = 60 # LED updates per second
chunk = int(fs / refresh_rate)      # Samples per frame

max_vol = 0 # The maximum volume seen

y_roll = np.random.rand(10, chunk) / 1e16

def start_stream(callback):
    p = pyaudio.PyAudio()  # Create an interface to PortAudio

    device_name = "pulse_monitor" # Name of input device
    device_index = -1 # Will be set when name is searched for
    
    # Find device by name
    for i in range(p.get_device_count()):
        dev = p.get_device_info_by_index(i)
        if (dev['name'] == device_name):
            device_index = i
            break

    if (device_index == -1):
        raise RuntimeError(f"Unable to find {device_name} device")


    # Open a Stream with the values we just defined
    stream = p.open(format=pyaudio.paInt16,
                    channels=channels, # We only need one channel
                    rate=fs,
                    frames_per_buffer=chunk,
                    input_device_index=device_index,
                    input=True)

    i = 0
    while True:
        try:
            data = np.frombuffer(stream.read(chunk, exception_on_overflow=False), dtype=np.int16)
            data = data.astype(np.float32)
            stream.read(stream.get_read_available(), exception_on_overflow=False)

            # Process the audio

            N = len(data)

            data *= np.hamming(N)

            mags = np.abs(rfft(data))
            mags = (2.0 / N) * np.abs(mags[:N//2])

            callback(mags) # The caller can do whatever they want with this data
        except IOError:
            print("Overflow detected")
            pass

    # Stop and close the Stream and PyAudio
    stream.stop_stream()
    stream.close()
    p.terminate()

# Assume magnitudes and freqs are normalized between 0 and 1
def get_cols_from_mags(mags):
    cols = []
    for i in range(len(mags)):
        cols.append(np.array(Color.from_hsv(i / len(mags), 1, 1).rgb) * 255 * mags[i])
    return cols

def hz_to_mels(hz):
    return 2595.0 * np.log10(1.0 + hz/700.0)

# Maps the magnitudes linearly onto the LEDs
def frequency_visualization(mags):
    viz_LEDs = num_LEDs# // 2 # The output is mirrored

    # Squish the data down to the size of the LEDs
    delta_mel = hz_to_mels(fs / 2) / viz_LEDs
    freq_step = (fs / 2) / len(mags)
    new_mags = []
    cur_freq = 0
    for _ in range(viz_LEDs):
        cur_freq = (cur_freq + 700) * pow(10, delta_mel / 2595.0) - 700
        idx = int(cur_freq // freq_step) - 1
        new_mags.append(mags[idx])

    mags = np.array(new_mags)
    # Scale the data between 0 and 1
    mags = np.clip(mags / 500, 0.1, 1.1) - 0.1

    # Convert the magnitude of each frequency to a color
    cols = get_cols_from_mags(mags)
    pixels[::] = cols #np.concatenate((cols[::-1], cols))
    
    # Update the LEDs
    pixels.show()

start_stream(frequency_visualization)



