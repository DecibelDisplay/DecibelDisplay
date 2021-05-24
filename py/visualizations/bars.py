import numpy as np
import dsp


class BarsVisualization():
    def __init__(self, fs, chunk, num_LEDs):
        # Use magnitude of (bass, mid, treble) as number of LEDs lit up
        self.gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0001, alpha_rise=0.99)
        self.r_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)
        self.g_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)
        self.b_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.99)

        self.fs = fs
        self.chunk = chunk
        self.num_LEDs = num_LEDs

    def update(self, mags):
        # Update the gain
        self.gain.update(mags)
        mags /= self.gain.value
        mags[mags > 1] = 1  # Ensures the mags are between 0 and 1

        viz_LEDs = num_LEDs // 2  # The output is mirrored
        BASS_CUTOFF = 200
        MID_CUTOFF = 5000
        freq_step = (self.fs / 2) / len(mags)

        bass_idx = int(BASS_CUTOFF // freq_step) + 1
        mid_idx = int(MID_CUTOFF // freq_step) + 1

        bass_mag = int(np.mean(mags[0:bass_idx]) * viz_LEDs)
        mid_mag = int(np.mean(mags[bass_idx:mid_idx]) * viz_LEDs)
        high_mag = int(np.mean(mags[mid_idx:]) * viz_LEDs)

        # print("\n".join([f"{((i+1) * freq_step, mags[i])}" for i in range(len(mags))]))

        r, g, b = [bass_mag, mid_mag, high_mag]  # Can change the order if necessary

        r = int(self.r_filt.update(r * 1.2))
        g = int(self.g_filt.update(g * 1.2))
        b = int(self.b_filt.update(b * 1.2))

        p = np.zeros((viz_LEDs, 3))

        for i in range(viz_LEDs):
            red = 100 * (1 - i / r) if i < r else 0
            green = 100 * (1 - i / g) if i < g else 0
            blue = 100 * (1 - i / b) if i < b else 0
            p[i] = (red, green, blue)

        return np.concatenate((p[::-1], p))  # Mirror