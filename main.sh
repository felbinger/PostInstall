#!/bin/bash

bootlogo="img/bootlogos/nsa-monitored-device.png"

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  ### Add Software Repositories ###
  apt-add-repository -y ppa:obsproject/obs-studio
  curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
  echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | tee -a /etc/apt/sources.list.d/signal-xenial.list

  ### Install Updates ###
  apt update
  apt upgrade -y

  ### Install Software ###
  apt purge -y pix onboard gnome-calendar rhythmbox synaptic redshift xterm hexchat gufw mintbackup
  apt install -y git youtube-dl ufw whois rsync
  apt install -y python3 python3-setuptools python3-pip

  # GUI Software
  apt install -y terminator vlc gparted keepassxc audacity sqlitebrowser nemo-seahorse
  apt install -y network-manager-vpnc-gnome network-manager-openvpn-gnome

  # Google Chrome
  bash scripts/installGoogleChrome.sh

  # GStreaner
  apt install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools

  # TeamViewer
  bash scripts/installTeamviewer.sh

  # Grub Customizer
  bash scripts/installGrubCustomizer.sh

  # Virtual Machine Hypervisors
  apt install -y virtualbox-qt virt-manager

  # Atom
  bash scripts/installAtom.sh

  # Telegram
  bash scripts/installTelegram.sh

  # Signal
  apt install signal-desktop

  # Open Broadcaster Studio
  apt install -y ffmpeg obs-studio

  # Download password generator string and safe it to /usr/bin
  bash scripts/downloadGenpw.sh

  # Change the plymouth boot logo
  bash scripts/changeBootlogo.sh $bootlogo
fi
