# Code to intercept Bluetooth audio and provide values to callback function
# Heavily inspired by https://github.com/scottlawsonbc/audio-reactive-led-strip/blob/master/python/visualization.py

import pyaudio
import numpy as np
from scipy import signal
from scipy.fft import rfft, rfftfreq
from sklearn import preprocessing
import asyncio
import dsp
from scipy.ndimage.filters import gaussian_filter1d

import random
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

gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0001, alpha_rise=0.99)
r_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)
g_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)
b_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)

# Maps the magnitudes linearly onto the LEDs
def frequency_visualization(mags):
    # Update the gain
    gain.update(mags)
    mags /= gain.value 
    mags[mags > 1] = 1 # Ensures the mags are between 0 and 1

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
    # mags = np.clip(mags / 500, 0.1, 1.1) - 0.1

    # Convert the magnitude of each frequency to a color
    cols = get_cols_from_mags(mags)
    pixels[::] = cols #np.concatenate((cols[::-1], cols))
    
    # Update the LEDs
    pixels.show()

# Use magnitude of (bass, mid, treble) as number of LEDs lit up
def bars_visualization(mags):
    # Update the gain
    gain.update(mags)
    mags /= gain.value 
    mags[mags > 1] = 1 # Ensures the mags are between 0 and 1

    viz_LEDs = num_LEDs // 2 # The output is mirrored
    BASS_CUTOFF = 200
    MID_CUTOFF = 5000
    freq_step = (fs / 2) / len(mags)


    bass_idx = int(BASS_CUTOFF // freq_step) + 1
    mid_idx = int(MID_CUTOFF // freq_step) + 1

    bass_mag = int(np.mean(mags[0:bass_idx]) * viz_LEDs)
    mid_mag = int(np.mean(mags[bass_idx:mid_idx]) * viz_LEDs) 
    high_mag = int(np.mean(mags[mid_idx:]) * viz_LEDs)

    # print("\n".join([f"{((i+1) * freq_step, mags[i])}" for i in range(len(mags))]))

    r, g, b = [bass_mag, mid_mag, high_mag] # Can change the order if necessary

    r = int(r_filt.update(r * 1.2))
    g = int(g_filt.update(g * 1.2))
    b = int(b_filt.update(b * 1.2))

    p = np.zeros((viz_LEDs, 3))

    for i in range(viz_LEDs):
        red = 100 * (1 - i / r) if i < r else 0
        green = 100 * (1 - i / g) if i < g else 0
        blue = 100 * (1 - i / b) if i < b else 0
        p[i] = (red, green, blue)

    pixels[::] = np.concatenate((p[::-1], p)) # Mirror

    pixels.show()


p = np.tile(1.0, (3, num_LEDs // 2)) # p has 3 arrays (r, g, b)
rp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
gp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
bp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
p_gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0005, alpha_rise=0.99)
consecutive_zeros = 0
def pulse_visualization(mags):
    global p, consecutive_zeros
    # Update the gain
    p_gain.update(mags)
    mags /= p_gain.value 
    mags[mags > 1] = 1 # Ensures the mags are between 0 and 1
        
    viz_LEDs = num_LEDs // 2 # The output is mirrored
    BASS_CUTOFF = 200
    MID_CUTOFF = 5000
    freq_step = (fs / 2) / len(mags)

    bass_idx = int(BASS_CUTOFF // freq_step) + 1
    mid_idx = int(MID_CUTOFF // freq_step) + 1

    bass_mag = np.median(mags[0:bass_idx])
    mid_mag = np.median(mags[bass_idx:mid_idx])
    high_mag = np.median(mags[mid_idx:])

    r, g, b = [bass_mag, mid_mag, high_mag] # Can change the order if necessary

    r = rp_filt.update(r)
    g = gp_filt.update(g)
    b = bp_filt.update(b)

    # If there's a long period of silence, reset the gain
    if max(r, g, b) < 0.2:
        if consecutive_zeros > 60:
            print(f"Consecutive zeroes {random.random()}")
            p_gain.alpha_decay = 0.05
        else:
            consecutive_zeros += 1
    else:
        consecutive_zeros = 0
        p_gain.alpha_decay = 0.005

    p[:, 1:] = p[:, :-1] # For each color channel, x[i+1] = x[i] (i.e. shift down)
    p *= 0.98
    
    p = gaussian_filter1d(p, sigma=0.2)
    
    decay = 5.0
    p[0, 0] = 255 * r ** 2 if r > 0.2 else p[0, 0] * ((decay - 1.0) / decay + r / decay)
    p[1, 0] = 255 * g ** 2 if g > 0.2 else p[1, 0] * ((decay - 1.0) / decay + g / decay)
    p[2, 0] = 255 * b ** 2 if b > 0.2 else p[2, 0] * ((decay - 1.0) / decay + b / decay)
  

    rgb_pixels = np.concatenate((p[:, ::-1], p), axis=1)
    
    cutoff = np.max(mags) / 2
    rgb_pixels[rgb_pixels < cutoff] = 0

    pixels[::] = [rgb_pixels[:, i] for i in range(len(rgb_pixels[0]))] # Mirror

    pixels.show()


if __name__ == "__main__":
    start_stream(pulse_visualization)



async def run_visualize(loop):
    start_stream(pulse_visualization)
    await loop.create_future()