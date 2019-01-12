#!/bin/bash

# This script installs xampp

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  cd /opt
  wget -q https://www.apachefriends.org/xampp-files/7.1.7/xampp-linux-x64-7.1.7-0-installer.run -O /opt/xampp.run
  chmod u+x /opt/xampp.run
  ./xampp.run --mode unattended
  rm /opt/xampp.run
fi
