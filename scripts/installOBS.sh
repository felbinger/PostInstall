#!/bin/bash

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
else
  apt-add-repository -y ppa:obsproject/obs-studio
  apt update
  apt install -y ffmpeg obs-studio
fi
