#sudo pip install pimoroni-bme280 smbus
import time
from smbus import SMBus
from bme280 import BME280
bus= SMBus(1)
bme280 =BME280(i2c_dev = bus)

while True:
    temp = bme280.get_temperature()
    pres = bme280.get_pressure()
    hum = bme280.get_humidity()
    print(str(round(temp,4)) + " C " + str(round(pres,4)) + " hPA" + str(round(hum,4)) + " %" )
    sleep(5)
