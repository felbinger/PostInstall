#!/bin/bash

# This script installs the Arduino IDE

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  echo "Arduino IDE not implemented yet"
  wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz | tar xJC /opt
  mv /opt/arduino* /opt/arduino
  cd /opt/arduino
  ./install.sh
  sudo -u $1 'bash /opt/arduino/install.sh'
fi
