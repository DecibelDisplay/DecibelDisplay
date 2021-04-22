import board
import neopixel
import random
from time import sleep

pixels = neopixel.NeoPixel(board.D18, 150)

max_val = 20

def get_ran():
    return random.random() * max_val

while True:
    pixels.fill((0,0,0))
    sleep(1)
    pixels.fill((255,0,0))
    #pixels.fill((get_ran(), get_ran(), get_ran()))
    sleep(1)
