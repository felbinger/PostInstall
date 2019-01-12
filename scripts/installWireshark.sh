#!/bin/bash

# This script installs the latest version of google chrome

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  debconf-set-selections <<< 'wireshark-common wireshark-common/install-setuid boolean true'
  apt install -y wireshark
fi
