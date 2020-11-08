#!/bin/bash

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
else
  wget -O- "https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.18.7455.tar.gz" | tar xz
  mv jetbrains-toolbox-1.12.4481/jetbrains-toolbox /usr/bin
  rm -rf jetbrains-toolbox-1.12.4481
fi
