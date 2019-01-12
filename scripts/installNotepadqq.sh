#!/bin/bash

# Install NotepadQQ

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt-add-repository -y ppa:notepadqq-team/notepadqq
  apt update
  apt install -y notepadqq
fi
