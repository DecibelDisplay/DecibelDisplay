#!/usr/bin/env bash

function online {
  ping -c 1 google.com 
  return $?
}

until online
do
  sleep 5
done

cd /home/pi/DecibelDisplay

cd sdk-folder
lxterminal -e "./run.sh ; read -n 1 -s"

cd ../frontend
lxterminal -e "./dist_electron/linux-armv7l-unpacked/decibel-display --no-sandbox ; read -n 1 -s"

cd ../py
lxterminal -e "sudo python3 main.py ; read -n 1 -s"
