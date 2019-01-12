#!/bin/bash

# Install GStreamer

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools
fi
