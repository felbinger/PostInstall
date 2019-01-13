#!/bin/bash

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkranken-amd64.deb
  dpkg -i /tmp/gitkranken-amd64.deb
  apt install -y -f
  rm -f /tmp/gitkranken-amd64.deb
fi
