#!/bin/bash

# This script installs discord

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  #TODO Not working - "tail didn't work. This could be caused by exhausted disk space. Aborting."
  #wget -qO- https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh | bash

  wget -q https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh -O /tmp/zap.sh

  if [[ -z $(which java) ]]; then
    apt install -y openjdk-8-jre
  else
    bash /tmp/zap.sh
    # TODO user interaction required
  fi
fi
