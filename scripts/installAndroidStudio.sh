#!/bin/bash

# Install Android Studio

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://dl.google.com/dl/android/studio/ide-zips/3.1.0.16/android-studio-ide-173.4670197-linux.zip -O /tmp/android-studio.zip
  unzip /tmp/android-studio.zip -d /opt
  rm /tmp/android-studio.zip

  ln /opt/android-studio/bin/studio.sh /usr/bin/android-studio
fi
