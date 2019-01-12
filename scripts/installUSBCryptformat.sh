#!/bin/bash

# This script installs USB Cryptformat

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget http://mandalka.name/usbcryptformat/usbcryptformat_12.05.20_all.deb
  dpkg -i usbcryptformat*.deb
  rm usbcryptformat*.deb
  apt install -f -y
fi
