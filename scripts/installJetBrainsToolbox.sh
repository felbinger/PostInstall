#!/bin/bash

# Install JetBrains Toolbox

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -qO- https://download-cf.jetbrains.com/toolbox/jetbrains-toolbox-1.9.3935.tar.gz | tar xz
  mv jetbrains-toolbox-1.9.3935/jetbrains-toolbox /usr/bin
  rm -rf jetbrains-toolbox-1.9.3935
fi
