#!/bin/bash

# This script installs radare2 - https://github.com/radare/radare2

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget http://radare.mikelloc.com/get/2.5.0/radare2_2.5.0_amd64.deb
  dpkg -i radare2_2.5.0_amd64.deb
  rm radare2_2.5.0_amd64.deb
  apt install -f -y
fi
