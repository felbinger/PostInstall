#!/bin/bash

# Install Android Studio

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
  dpkg -i steam_latest.deb
  rm steam_latest.deb

  apt install -f -y
fi
