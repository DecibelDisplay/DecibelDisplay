from scipy.ndimage.filters import gaussian_filter1d
from colorzero import Color
import numpy as np
import dsp

gamma_corrected = [
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
    1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
    2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
    5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
   10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
   17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
   25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
   37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
   51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
   69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
   90, 92, 93, 95, 96, 98, 99,101,102,104,105,107,109,110,112,114,
  115,117,119,120,122,124,126,127,129,131,133,135,137,138,140,142,
  144,146,148,150,152,154,156,158,160,162,164,167,169,171,173,175,
  177,180,182,184,186,189,191,193,196,198,200,203,205,208,210,213,
  215,218,220,223,225,228,231,233,236,239,241,244,247,249,252,255 ];

 

class ColorVisualization():
    def __init__(self, fs, chunk, num_LEDs):
        self.p = np.ones((3, num_LEDs // 2))  # p has 3 arrays (r, g, b)
        self.rp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.gp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.bp_filt = dsp.ExpFilter(0, alpha_decay=0.1, alpha_rise=0.5)
        self.p_gain = dsp.ExpFilter(np.tile(0.01, chunk // 2), alpha_decay=0.0005, alpha_rise=0.99)
        self.consecutive_zeros = 0

        self.fs = fs
        self.num_LEDs = num_LEDs

    def _correct_color(self, col, idx):
        DECAY = 5.0
        val = 255 * col ** 0.8 if col > 0.2 else self.p[idx, 0] * ((DECAY - 1.0) / DECAY + col / DECAY)
        return gamma_corrected[int(val)]

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

        

        c1 = Color("#ED89AB").rgb
        c2 = Color("#77C2C7").rgb
        c3 = Color("#77C2C7").rgb

        chosen_mag = bass_mag
        chosen_color = c1 # Chosen if bass is most prominent
        
        if (mid_mag > chosen_mag):
            chosen_color = c2 # Chosen if mid is most prominent
            chosen_mag = mid_mag
        if (high_mag > chosen_mag):
            chosen_color = c3 # Chosen if high is most prominent
            chosen_mag = high_mag

        # [r, g, b] = [min(c1[i] * bass_mag + c2[i] * mid_mag + c3[i] * high_mag, 1) for i in range(3)]

        [r, g, b] = np.roll(np.array(chosen_color) * chosen_mag, 1)

        r = self.rp_filt.update(r)
        g = self.gp_filt.update(g)
        b = self.bp_filt.update(b)

        # If there's a long period of silence, reset the gain
        # if max(r, g, b) < 0.2:
        #     if self.consecutive_zeros > 60:
        #         # print(f"Consecutive zeroes {random.random()}")
        #         self.p_gain.alpha_decay = 0.05
        #     else:
        #         self.consecutive_zeros += 1
        # else:
        #     self.consecutive_zeros = 0
        #     self.p_gain.alpha_decay = 0.005

        self.p[:, 1:] = self.p[:, :-1]  # For each color channel, x[i+1] = x[i] (i.e. shift down)
        self.p *= 0.98

        self.p = gaussian_filter1d(self.p, sigma=0.2)

        
        rgbs = [r, g, b]
        
        self.p[:, 0] = [self._correct_color(rgbs[i], i) for i in range(len(rgbs))]

        rgb_pixels = np.concatenate((self.p[:, ::-1], self.p), axis=1)  # Mirror

        # cutoff = np.max(mags) / 2
        # rgb_pixels[rgb_pixels < cutoff] = 0

        # This is a fix since the LEDs on the actual display isn't perfectly aligned
        return np.roll([rgb_pixels[:, i] for i in range(len(rgb_pixels[0]))], -25)
    