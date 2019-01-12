#!/bin/bash

# Install kismon

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y git python3 python3-gi gir1.2-gtk-3.0 gir1.2-gdkpixbuf-2.0 python-cairo python-simplejson python3-cairo python3-simplejson gir1.2-osmgpsmap-1.0
  git clone https://github.com/Kismon/kismon.git /opt/kismon
  cd /opt/kismon/
  python /opt/kismon/setup.py build
  python /opt/kismon/setup.py install
fi
