#!/bin/bash

# This script installs the latest version of google chrome

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
  wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
  apt update
  debconf-set-selections <<< 'opera-stable opera-stable/add-deb-source boolean false'
  apt install opera-stable
fi
