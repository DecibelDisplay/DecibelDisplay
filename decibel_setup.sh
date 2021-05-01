#!/usr/bin/env bash

PROJ_DIR=$(pwd)

Setup aliases
if  grep -q "alias sudo" ~/.bashrc ; then
  echo "Already there"
else
  echo "alias sudo='sudo '" >> ~/.bashrc
  echo "alias py=python3" >> ~/.bashrc
fi

# Update package list
sudo apt update 

sudo apt install libportaudio2 libatlas-base-dev -y

# Install python packages
sudo apt remove python3-numpy -y # Remove default version of numpy
sudo python3 -m pip install scipy numpy scikit-learn zmq \
    adafruit-circuitpython-neopixel dbus-next termcolor \
    pimoroni-bme280 smbus pyaudio

# CircuitPython install
cd ~
rm raspi-blinka.py
sudo pip3 install --upgrade adafruit-python-shell
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
sed 's/not shell.prompt("Continue?")/0/g' raspi-blinka.py > raspi-blinka1.py # Prevent the prompt
sed 's/shell.prompt_reboot()//g' raspi-blinka1.py > raspi-blinka2.py # Prevent reboot prompt
sudo python3 raspi-blinka2.py
rm raspi-blinka*.py

# Install node.js and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc

nvm install 15


# Install npm packages
cd "$PROJ_DIR/frontend"
npm i -g yarn
yarn install

# Setup asound.conf
sudo echo "" > /etc/asound.conf # Clear out file
sudo cat > /etc/asound.conf <<DELIM
pcm.!default {
  type asym
  playback.pcm {
    type plug
    slave.pcm "hw:0,0"
  }
  capture.pcm {
    type plug
    slave.pcm "hw:1,0"
  }
}

# Loopback output to an input device
pcm.pulse_monitor {
  type pulse
  device alsa_output.usb-Generic_TX-Hifi_Type_C_Audio-00.analog-stereo.monitor
}

ctl.pulse_monitor {
  type pulse
  device alsa_output.usb-Generic_TX-Hifi_Type_C_Audio-00.analog-stereo.monitor
}
DELIM

# Setup AVS/Alexa required packages
cd "$PROJ_DIR/sdk-folder"
./install_reqs.sh

# Sensory Wake Word
cd "$PROJ_DIR/sdk-folder/third-party"
sudo rm -rf alexa-rpi
git clone git://github.com/Sensory/alexa-rpi.git
cd alexa-rpi/bin/
./license.sh # Will have to type yes here

# Port Audio
cd "$PROJ_DIR/sdk-folder/third-party"
sudo rm -rf portaudio
wget -c http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
tar zxf pa_stable_v190600_20161030.tgz
cd portaudio
./configure --without-jack
make

# Build Alexa
cd "$PROJ_DIR/sdk-folder"
./build.sh
./genJSON.sh
