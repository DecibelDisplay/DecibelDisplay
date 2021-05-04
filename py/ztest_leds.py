import neopixel
import board
from time import sleep
import random

num_LEDs = 150
pixels = neopixel.NeoPixel(board.D18, num_LEDs)

def ran_col():
    return int(255 * random.random())

while True:
    pixels.fill((ran_col(), ran_col(), ran_col()))
    sleep(1)
