#!/bin/bash

os=$(. /etc/os-release; echo "$NAME")

if [ $(/usr/bin/id -u) != "0" ]; then
  echo "Please run the script as root!"
else
  apt update
  apt upgrade -y
  apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common

  if [[ $os -eq "Linux Mint" ]]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
  else
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add -
  fi

  apt-key fingerprint 0EBFCD88

  if [[ $os -eq "Linux Mint" ]]; then
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  else
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable"
  fi

  apt update
  apt install -y docker-ce
  curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose
fi