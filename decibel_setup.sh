#!/usr/bin/env bash

PROJ_DIR=$(pwd)

#Setup aliases
if  grep -q "alias sudo" ~/.bashrc ; then
  echo "Already there"
else
  echo "alias sudo='sudo '" >> ~/.bashrc
  echo "alias py=python3" >> ~/.bashrc
fi

# Setup Git
git config --global user.email "chaley@hawk.iit.edu"
git config --global user.name "camero2734"

# Update package list
sudo apt update 

sudo apt install libportaudio2 libatlas-base-dev pavucontrol -y

# Add pi and root to pulse-access
sudo usermod -aG pulse-access root
sudo usermod -aG pulse-access pi

# Update Bluez
cd ~
sudo apt-get install libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev -y
wget https://mirrors.edge.kernel.org/pub/linux/bluetooth/bluez-5.58.tar.xz
tar xvf bluez-5.58.tar.xz && cd bluez-5.58
./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --enable-experimental 
make -j2
sudo make install


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

# Numba (Python JIT)
# sudo apt install llvm-9
# LLVM_CONFIG=llvm-config-9 sudo py -m pip install llvmlite

# Install node.js and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc

nvm install 15


# Install npm packages
cd "$PROJ_DIR/frontend"
npm i -g yarn
yarn install

# Setup asound.conf
sudo echo "" > ~/.asoundrc # Clear out file
cat > ~/.asoundrc <<DELIM
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

sudo cp ~/.asoundrc /etc/asound.conf

# Setup AVS/Alexa required packages
cd "$PROJ_DIR/sdk-folder"
./install_reqs.sh

# Install ZMQ library for C++
cd ~
git clone https://github.com/zeromq/libzmq.git
cd libzmq
mkdir build
cd build
cmake ..
sudo make -j2 install

cd ~
git clone https://github.com/zeromq/cppzmq.git
cd cppzmq
mkdir build
cd build
cmake ..
sudo make -j2 install

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


# Things not automated:
# Comment out the following lines in /etc/pulse/default.pa
  ### Automatically load driver modules for Bluetooth hardware
  #.ifexists module-bluetooth-policy.so
  #load-module module-bluetooth-policy
  #.endif

  #.ifexists module-bluetooth-discover.so
  #load-module module-bluetooth-discover
  #.endif
# otherwise Alexa won't be able to control the Bluetooth audio

# Startup using xdg startup service
# [Desktop Entry]
# Type=Application
# Name=decibel-display
# Comment=Decibel Display GUI and backend
# NoDisplay=false
# Exec=sudo /usr/bin/lxterminal -e /home/pi/DecibelDisplay/run_all.sh
# NotShowIn=GNOME;KDE;XFCE;


# Disable screen sleep
# sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
# @xset s off
# @xset -dpms
