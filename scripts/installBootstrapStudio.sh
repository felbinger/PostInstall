#!/bin/bash

# Install Atom IDE

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q "https://bootstrapstudio.io/releases/desktop/4/Bootstrap Studio 4 (64bit).deb"
  dpkg -i "Bootstrap Studio 4 (64bit).deb"
  rm "Bootstrap Studio 4 (64bit).deb"
  apt install -f -y
fi
