#!/bin/bash

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://dl.discordapp.net/apps/linux/0.0.5/discord-0.0.5.deb
  dpkg -i discord-0.0.5.deb
  rm discord-0.0.5.deb
  apt install -f -y
fi
