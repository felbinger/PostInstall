#!/bin/bash

# Install Hashcat

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://github.com/hashcat/hashcat/releases/download/v4.1.0/hashcat-4.1.0.7z
  apt install -y p7zip
  7z x hashcat-4.1.0.7z -o/opt/
  ln -s /opt/hashcat-4.1.0/hashcat64.bin /usr/bin/hashcat
fi
