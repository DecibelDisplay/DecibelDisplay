#sudo pip install pimoroni-bme280 smbus
from time import sleep
from smbus import SMBus
from bme280 import BME280
import zmq

bus= SMBus(1)
bme280 =BME280(i2c_dev = bus)

PORT = 7007

context = zmq.Context()
sock = context.socket(zmq.PUSH) # pylint: disable=no-member
sock.bind(f"tcp://127.0.0.1:{PORT}")


class BME280:
    temp = 0
    pres = 0
    hum  = 0
    def __init__(self):
        for _ in range(10):
            self._read_values()
    
    def _read_values(self):
        self.temp = bme280.get_temperature()
        self.pres = bme280.get_pressure()
        self.hum = bme280.get_humidity()

    def read(self):
        self._read_values()
        data = {"temperature": self.temp, "humidity": self.hum, "pressure": self.pres}
        sock.send_json({"category": "sensor", "cmd": "sensor", "data": data})


    def __str__(self):
        return f"{self.temp}C {self.pres}hPA {self.hum}%"

    def __repr__(self):
        return f"{self.temp}C {self.pres}hPA {self.hum}%"

bme = BME280()

while True:
    bme.read()
    sleep(5)
