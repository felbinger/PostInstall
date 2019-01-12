#!/bin/bash

# This script installs Eclipse

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  mkdir /opt/eclipse
  chown -R user:user /opt/eclipse
  chmod -R 755 /opt/eclipse

  wget http://mirror.tspu.ru/eclipse/oomph/epp/neon/R2a/eclipse-inst-linux64.tar.gz | tar xz /tmp/eclipse-installer
  cd /tmp/eclipse-installer
  sudo su $1
  ./eclipse-inst
  exit
  rm -rf /tmp/eclipse-installer
fi
