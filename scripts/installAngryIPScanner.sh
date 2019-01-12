#!/bin/bash

# This script installs angry ip scanner

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget https://github.com/angryziber/ipscan/releases/download/3.5.1/ipscan_3.5.1_amd64.deb
  dpkg -i ipscan_*.deb
  rm ipscan_*.deb
  apt install -f -y
fi
