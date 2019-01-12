#!/bin/bash

# This script changed the wallpaper

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  if [[ -z $1 ]]; then
    echo "./$0 newWallpaper.png"
  else
    filetype=${1##*.} # get last match seperated by dot
    path="/usr/share/backgrounds/userDefinedWallpaper."$filetype
    cp $1 $path
    gsettings set org.cinnamon.desktop.background picture-uri  "file://"$path
  fi
fi
