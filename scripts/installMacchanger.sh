#!/bin/bash

# Install burpsuite

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  debconf-set-selections <<< 'macchanger macchanger/automatically_run	boolean	false'
  apt install -y macchanger
fi
