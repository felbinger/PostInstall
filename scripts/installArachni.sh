#!/bin/bash

# This script installs arachni - a web vulnerbiliti scanner

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -qO- https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz | tar xzC /opt/
  mv /opt/arachni* /opt/arachni
fi
