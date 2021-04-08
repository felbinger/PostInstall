#!/bin/bash

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
else
  # moved to official repositories
  #apt-add-repository -y ppa:danielrichter2007/grub-customizer
  #apt update
  apt install -y grub-customizer
fi
