from gpiozero import LED
from time import sleep

p = LED(18)

p.on()

sleep(100)