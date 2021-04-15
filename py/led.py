import board
import neopixel

pixels = neopixel.NeoPixel(board.D18, 150)

pixels.fill((0, 255, 0))