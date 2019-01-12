#!/bin/bash

# Install Zoiper 5

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  # Download Zoiper from: https://www.zoiper.com/en/voip-softphone/download/zoiper5/for/linux-deb
  # Save Zoiper5 as zoiper5.deb
  # dpkg -i zoiper5.deb
  # rm zoiper5.deb
  echo "Not Working" #TODO
fi
