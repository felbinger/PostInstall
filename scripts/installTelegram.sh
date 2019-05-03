#!/bin/bash

# This script installs anydesk

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -qO- "https://updates.tdesktop.com/tlinux/tsetup.1.6.7.tar.xz" | tar xJC /opt/
  ln -s /opt/Telegram/Telegram /usr/bin/telegram
  telegram &
fi
