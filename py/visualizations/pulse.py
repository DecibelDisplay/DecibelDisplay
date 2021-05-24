from scipy.ndimage.filters import gaussian_filter1d
import numpy as np
import dsp


class PulseVisualization():
    def __init__(self, fs, chunk, num_LEDs):
        self.p = np.tile(1.0, (3, num_LEDs // 2))  # p has 3 arrays (r, g, b)
        self.rp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.gp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.bp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.p_gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0005, alpha_rise=0.99)
        self.consecutive_zeros = 0

        self.fs = fs
        self.num_LEDs = num_LEDs

    def update(self, mags):
        BASS_CUTOFF = 200
        MID_CUTOFF = 5000

        # Update the gain
        self.p_gain.update(mags)
        mags /= self.p_gain.value
        mags[mags > 1] = 1  # Ensures the mags are between 0 and 1
        freq_step = (self.fs / 2) / len(mags)

        bass_idx = int(BASS_CUTOFF // freq_step) + 1
        mid_idx = int(MID_CUTOFF // freq_step) + 1

        bass_mag = np.median(mags[0:bass_idx])
        mid_mag = np.median(mags[bass_idx:mid_idx])
        high_mag = np.median(mags[mid_idx:])

        r, g, b = [bass_mag, mid_mag, high_mag]  # Can change the order if necessary

        r = self.rp_filt.update(r)
        g = self.gp_filt.update(g)
        b = self.bp_filt.update(b)

        # If there's a long period of silence, reset the gain
        if max(r, g, b) < 0.2:
            if self.consecutive_zeros > 60:
                # print(f"Consecutive zeroes {random.random()}")
                self.p_gain.alpha_decay = 0.05
            else:
                self.consecutive_zeros += 1
        else:
            self.consecutive_zeros = 0
            self.p_gain.alpha_decay = 0.005

        self.p[:, 1:] = self.p[:, :-1]  # For each color channel, x[i+1] = x[i] (i.e. shift down)
        self.p *= 0.98

        self.p = gaussian_filter1d(self.p, sigma=0.2)

        decay = 5.0
        self.p[0, 0] = 255 * r ** 2 if r > 0.2 else self.p[0, 0] * ((decay - 1.0) / decay + r / decay)
        self.p[1, 0] = 255 * g ** 2 if g > 0.2 else self.p[1, 0] * ((decay - 1.0) / decay + g / decay)
        self.p[2, 0] = 255 * b ** 2 if b > 0.2 else self.p[2, 0] * ((decay - 1.0) / decay + b / decay)

        rgb_pixels = np.concatenate((self.p[:, ::-1], self.p), axis=1)  # Mirror

        cutoff = np.max(mags) / 2
        rgb_pixels[rgb_pixels < cutoff] = 0

        # This is a fix since the LEDs on the actual display isn't perfectly aligned
        return np.roll([rgb_pixels[:, i] for i in range(len(rgb_pixels[0]))], -25)
    