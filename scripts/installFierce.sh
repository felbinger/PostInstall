#!/bin/bash

# This script installs fierce

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y python3 python3-setuptools python3-pip
  pip3 install fierce
fi
