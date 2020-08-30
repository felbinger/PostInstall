#!/bin/bash

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
else
  ### Install Updates ###
  apt update
  apt upgrade -y

  ### Install Software ###
  apt purge -y pix onboard gnome-calendar rhythmbox synaptic xterm gufw mintbackup
  apt install -y git youtube-dl ufw whois rsync
  apt install -y python3.8 python3-setuptools python3-pip

  # GUI Software
  apt install -y terminator vlc gparted keepassxc audacity sqlitebrowser nemo-seahorse
  apt install -y network-manager-vpnc-gnome network-manager-openvpn-gnome

  # Google Chrome
  bash scripts/installGoogleChrome.sh

  # GStreaner
  apt install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools

  # Grub Customizer
  bash scripts/installGrubCustomizer.sh

  # Atom
  bash scripts/installAtom.sh

  # Signal
  bash scripts/installSignal.sh

  # Open Broadcaster Studio
    bash scripts/installOBS.sh

  # Download password generator string and safe it to /usr/bin
  bash scripts/downloadGenpw.sh
fi
