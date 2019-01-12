#!/bin/bash

# This script installs the social engeneering toolkit (set)

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt -y install git apache2 python-requests libapache2-mod-php python-pymssql build-essential python-pexpect python-pefile python-crypto python-openssl
  git clone https://github.com/trustedsec/social-engineer-toolkit/ /opt/social-engeneering-toolkit/
  cd /opt/social-engeneering-toolkit
  python /opt/social-engeneering-toolkit/setup.py install
fi
