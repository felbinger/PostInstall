#!/bin/bash

# Install Atom IDE

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt-add-repository -y ppa:webupd8team/atom
  apt update
  apt install -y atom
fi
