# DecibelDisplay

A smart, Alexa-built in Bluetooth speaker.

# Requirements

- [BME 280 Tempearature/Humidity/Pressure sensor](https://www.amazon.com/Compatible-Temperature-Humidity-Atmospheric-Barometric/dp/B08HT1X1S1)
- [WS2812B LED Strip](https://www.amazon.com/BTF-LIGHTING-Individual-Addressable-300Pixels-Waterproof/dp/B088B9QWHT)
- A USB microphone

# Setting up

This project has only been tested on the Raspberry Pi 4B; however it should work on any Raspberry Pi.

1. Start with a fresh install of [Raspberry Pi OS](https://www.raspberrypi.org/software/)

2. Clone this repository onto the Raspberry Pi

3. Run the `decibel_setup.sh` script

4. Perform the manual adjustments specified at the end of the file

To start everything, run `run_all.sh`. This runs the backend Python application, the frontend Electron application, and the Alexa application.
