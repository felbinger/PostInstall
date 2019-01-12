#!/bin/bash

# Install Roccat Software

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt-add-repository -y ppa:berfenger/roccat
  apt update
  apt install -y roccat-tools
fi
