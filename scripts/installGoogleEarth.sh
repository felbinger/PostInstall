#!/bin/bash

# Install Google Earth

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://dl.google.com/dl/earth/client/current/google-earth-pro-stable_current_amd64.deb
  dpkg -i google-earth-pro-stable_current_amd64.deb
  rm google-earth-pro-stable_current_amd64.deb
  apt install -f -y
fi
