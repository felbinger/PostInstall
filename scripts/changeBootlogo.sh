#!/bin/bash

# This script changed the default linux mint bootup logo to an user defined logo.
# The logo should have 192x192 pixels

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  if [[ -z $1 ]]; then
    echo "./$0 newLogo.png"
  else
    plymouth="/usr/share/plymouth/themes/mint-logo"
    mv $plymouth/mint-logo.png $plymouth/default_mint-logo.png
    cp $1 $plymouth/mint-logo.png
    update-initramfs -u
  fi
fi
