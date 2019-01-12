#!/bin/bash

# Download genpw

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q https://raw.githubusercontent.com/felbinger/scripts/master/genpw.sh -O /usr/bin/genpw
  chmod +x /usr/bin/genpw
fi
