# Code to intercept Bluetooth audio and provide values to callback function
# Heavily inspired by https://github.com/scottlawsonbc/audio-reactive-led-strip/blob/master/python/microphone.py

import pyaudio
import numpy as np
from scipy import signal
from scipy.fft import rfft, rfftfreq
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

y_roll = np.random.rand(2, chunk) / 1e16

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
            data = data / 2.0**15 # Normalizes samples between 0 and 1


            y_roll[:-1] = y_roll[1:]
            y_roll[-1, :] = np.copy(data)
            y_data = np.concatenate(y_roll, axis=0).astype(np.float32)

            vol = np.max(np.abs(y_data))
            N = len(y_data)

            y_data *= np.hamming(N)

            mags = np.abs(rfft(y_data))
            freqs = rfftfreq(len(y_data), d=1/fs)

            # fft_values = np.array(list(zip(freq, fourier)))

            callback(freqs, mags) # The caller can do whatever they want with this data
        except IOError:
            print("Overflow detected")
            pass

    # Stop and close the Stream and PyAudio
    stream.stop_stream()
    stream.close()
    p.terminate()

# Assume magnitudes are normalized between 0 and 1
def get_cols_from_mags(mags):
    cols = []
    for i in range(len(mags)):
        cols[i] = np.array(Color.from_hsv(mags[i], 1, 1).rgb) * 255
    return cols

# Display 
def spectrum_visualization(freqs, mags):
    # Squish the data down to the size of the LEDs
    mags = signal.resample(mags, num_LEDs)

    # Convert the magnitude of each frequency to a color
    pixels[::] = get_cols_from_mags(mags)
    
    # Update the LEDs
    pixels.show()

start_stream(spectrum_visualization)



