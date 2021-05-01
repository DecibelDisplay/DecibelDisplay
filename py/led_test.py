import neopixel
import board

num_LEDs = 150
pixels = neopixel.NeoPixel(board.D18, num_LEDs)

pixels.fill((0,0,0))
