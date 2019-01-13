#!/bin/bash

if [ $(/usr/bin/id -u) != "0" ]; then
  echo "Please run the script as root!"
else
  wget -O- https://dist.torproject.org/torbrowser/8.0.4/tor-browser-linux64-8.0.4_en-US.tar.xz | tar xJC /opt/
  mv /opt/tor-browser* /opt/tor-browser
  ln -s /opt/tor-browser/start-tor-browser.desktop /usr/share/applications/tor-browser.desktop
fi
