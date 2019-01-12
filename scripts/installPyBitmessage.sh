#!/bin/bash

# Install PyBitmessage

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y git python openssl libssl-dev git python-msgpack python-qt4
  git clone https://github.com/Bitmessage/PyBitmessage.git /opt/PyBitmessage
  cd /opt/PyBitmessage
  python /opt/PyBitmessage/setup.py install
  ln /opt/PyBitmessage/src/bitmessagemain.py /usr/bin/pybitmessage
fi
