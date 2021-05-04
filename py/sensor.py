#sudo pip install pimoroni-bme280 smbus
from time import sleep
from smbus import SMBus
from bme280 import BME280
from termcolor import cprint
import zmq
import asyncio

bus= SMBus(1)
bme280 =BME280(i2c_dev = bus)

class Sensor:
    temp = 0
    pres = 0
    hum  = 0
    def __init__(self, sock):
        for _ in range(10):
            self._read_values()
            self.sock = sock
    
    def _read_values(self):
        self.temp = bme280.get_temperature()
        self.pres = bme280.get_pressure()
        self.hum = bme280.get_humidity()

    def read(self):
        self._read_values()
        data = {"temperature": self.temp * 1.8 + 32, "humidity": self.hum, "pressure": self.pres / 33.863886666667}
        self.sock.send_json({"category": "sensor", "cmd": "sensor", "data": data})


    def __str__(self):
        return f"{self.temp}C {self.pres}hPA {self.hum}%"

    def __repr__(self):
        return f"{self.temp}C {self.pres}hPA {self.hum}%"

async def run_sensor(sock):
    cprint("Starting sensor.py", "cyan")
    bme = Sensor(sock)
    while True:
        bme.read()
        await asyncio.sleep(5)
