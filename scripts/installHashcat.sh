#!/bin/bash

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y p7zip
  wget -q https://github.com/hashcat/hashcat/releases/download/v4.1.0/hashcat-4.1.0.7z -O /tmp/
  7z x /tmp/hashcat-4.1.0.7z -o/opt/
  rm /tmp/hashcat-4.1.0.7z
  mv /opt/hashcat-4.1.0 /opt/hashcat
  ln -s /opt/hashcat/hashcat64.bin /usr/bin/hashcat
fi
