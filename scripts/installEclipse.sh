#!/bin/bash

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  mkdir /opt/eclipse
  chown -R user:user /opt/eclipse
  chmod -R 755 /opt/eclipse

  wget -O- "https://www.mirrorservice.org/sites/download.eclipse.org/eclipseMirror/oomph/epp/2018-12/R/eclipse-inst-linux64.tar.gz" | tar xzC /tmp/
  sudo su $(getent passwd 1000 | cut -d ":" -f1)
  cd /tmp/eclipse-installer
  ./eclipse-inst
  # gui
  exit
  rm -rf /tmp/eclipse-installer
fi
