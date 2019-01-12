#!/bin/bash

# This script installs Nessus

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  echo "Nessus not implemented yet"
  # How to download the file: https://www.tenable.com/products/nessus/select-your-operating-system#tos
	#dpkg -i /opt/nessus-*.deb
	#rm /opt/nessus-*.deb
fi
