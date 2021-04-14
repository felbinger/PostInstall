#!/bin/bash

if [[ $(/usr/bin/id -u) != "0" ]]; then
  echo "Please run the script as root!"
  exit
fi

apt update
apt upgrade -y

apt purge -y pix onboard gnome-calendar rhythmbox synaptic xterm gufw mintbackup
apt install -y git whois \
  rsync python3.8 python3-setuptools python3-pip

# GUI Software
apt install -y terminator vlc gparted keepassxc grub-customizer \
  audacity sqlitebrowser nemo-seahorse xplayer obs-studio \
  network-manager-vpnc-gnome network-manager-openvpn-gnome telegram-desktop chromium

# GStreaner
apt install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools

# Google Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
apt install -f -y

# Download password generator string and safe it to /usr/bin
wget -q https://raw.githubusercontent.com/felbinger/scripts/master/genpw.sh -O /usr/local/bin/genpw
chmod +x /usr/local/bin/genpw
