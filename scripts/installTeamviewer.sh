#!/bin/bash

# This script installs the lastest version of teamviewer

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://download.teamviewer.com/download/teamviewer_i386.deb
  dpkg -i teamviewer_i386.deb
  rm teamviewer_i386.deb
  apt install -f -y
fi
