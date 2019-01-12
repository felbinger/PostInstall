#!/bin/bash

bootlogo="img/bootlogos/nsa-monitored-device.png"
username="user"
wallpaper="img/wallpapers/black.png"

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  ### Install Updates ###
  apt update
  apt upgrade -y

  ### Install Software ###
  apt install -y gcc git make build-essential linux-headers-$(uname -r) htop youtube-dl ufw whois screen rsync
  apt install -y python python-setuptools python-pip python-tk python3 python3-setuptools python3-pip python3-tk

  # GUI Software
  apt install -y terminator vlc gparted keepass2 cherrytree

  bash scripts/installAtom.sh     # atom ide

  bash scripts/installGstreamer.sh # GStreamer Codecs

  bash scripts/installGrubCustomizer.sh # gui tool to edit grub configuration
  #apt install -y gqrx-sdr     # software defined radio
  apt install -y kdenlive     # video editing tool
  apt install -y audacity     # audio recoding and editing
  #apt install -y freecad     # 3d cad tool

  # Network Manager Plugins for OpenVPN/VPNC
  apt install -y network-manager-vpnc-gnome network-manager-openvpn-gnome

  apt install -y sqlitebrowser # gui tool for sqlite

  # VirtualBox and management gui for qemu/kvm
  apt install -y virtualbox-qt virt-manager


  # roccat-tools          -> drivers and software utilitie for roccat hardware
  #bash scripts/installRoccatSoftware.sh

  # TeamViewer
  bash scripts/installTeamviewer.sh

  # AnyDesk
  bash scripts/installAnyDesk.sh

  # Discord
  bash scripts/installDiscord.sh

  # USB Cryptformat
  #bash scripts/installUSBCryptformat.sh

  # XAMPP
  #bash scripts/installXAMPP.sh

  # Telegram
  bash scripts/installTelegram.sh

  # Signal
  bash scripts/installSignal.sh

  # Tor Browser
  #bash scripts/installTorBrowser.sh

  # Google Chrome
  bash scripts/installGoogleChrome.sh

  # Bootstrap Studio - license required
  #bash scripts/installBootstrapStudio.sh

  # Steam
  # bash scripts/installSteam.sh

  # Open Broadcaster Studio
  bash scripts/installOpenBroadcasterStudio.sh

  # Docker
  #bash scripts/installDocker.sh

  # Spotify
  #bash scripts/installSpotify.sh

  # Arduino IDE TODO untested
  #bash scripts/installArduinoIDE.sh $username

  # Eclipse TODO untested
  #bash scripts/installEclipse.sh $username

  # OracleJDK for Eclipse Plugins and JavaFX support TODO disabled
  #bash scripts/installOracleJava.sh

  # Make sure to check the file before execution. Uncomment the thing you would like to install.
  bash hackingtools.sh

  # TeamSpeak 3 -> TODO user interaction required
  #bash scripts/installTeamSpeak3.sh



  # Download password generator string and safe it to /usr/bin
  bash scripts/downloadGenpw.sh

  # Change the plymouth boot logo
  bash scripts/changeBootlogo.sh $bootlogo

  # Change the wallpaper
  #bash scripts/changeWallpaper.sh $wallpaper
fi
