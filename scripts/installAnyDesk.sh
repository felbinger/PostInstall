#!/bin/bash

# This script installs anydesk

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget https://download.anydesk.com/linux/anydesk_4.0.0-1_amd64.deb
  dpkg -i anydesk_4.0.0-1_amd64.deb
  rm anydesk_4.0.0-1_amd64.deb
  apt install -f -y
fi
