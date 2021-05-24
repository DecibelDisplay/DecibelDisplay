from colorzero import Color
import numpy as np
import dsp

def get_cols_from_mags(mags):
    cols = []
    for i in range(len(mags)):
        cols.append(np.array(Color.from_hsv(i / len(mags), 1, 1).rgb) * 255 * mags[i])
    return cols


def hz_to_mels(hz):
    return 2595.0 * np.log10(1.0 + hz/700.0)

# Maps the magnitudes linearly onto the LEDs

class FrequencyVisualization():
    def __init__(self, fs, chunk, num_LEDs):
        self.gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0001, alpha_rise=0.99)

        self.fs = fs
        self.chunk = chunk
        self.num_LEDs = num_LEDs

    def update(self, mags):
        # Update the gain
        self.gain.update(mags)
        mags /= self.gain.value
        mags[mags > 1] = 1  # Ensures the mags are between 0 and 1

        viz_LEDs = num_LEDs  # // 2 # The output is mirrored

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
        return get_cols_from_mags(mags)