#!/bin/bash

# This script installs Tor Browser

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -qO- https://www.torproject.org/dist/torbrowser/7.5.3/tor-browser-linux64-7.5.3_en-US.tar.xz | tar xJC /opt/
  mv /opt/tor-browser* /opt/tor-browser
  ln -s /opt/tor-browser/start-tor-berowser.desktop /usr/share/applications/tor-browser.desktop
  # Start Tor Browser
fi
