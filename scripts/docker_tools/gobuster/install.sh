#!/bin/bash

WORDLISTS=(
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-small.txt"
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-medium.txt"
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-lowercase-2.3-large.txt"
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-small.txt"
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-medium.txt"
  "https://raw.githubusercontent.com/daviddias/node-dirbuster/master/lists/directory-list-2.3-large.txt"
  "https://raw.githubusercontent.com/diasdavid/node-dirbuster/master/lists/apache-user-enum-1.0.txt"
  "https://raw.githubusercontent.com/diasdavid/node-dirbuster/master/lists/apache-user-enum-2.0.txt"
)

WORDLIST_DIR=$(cat gobuster.sh | grep "WORDLIST_DIR=" | cut -d "=" -f 2)
WORDLIST_DIR=${WORDLIST_DIR//\"}

read -p "Which directory should be used for the wordlists? (Default: ${WORDLIST_DIR}): " IN_WORDLIST_DIR
read -p "Should the most useful wordlists be downloaded? (Y/n): " GET_WORDLISTS

if [[ -z ${GET_WORDLISTS} ]] || [[ ${GET_WORDLISTS} == "Y" ]] || [[ ${GET_WORDLISTS} == "y" ]]; then
  if [[ -z $(which wget) ]]; then
    sudo apt install -y wget
  fi
  for url in ${WORDLISTS[@]}; do
    wget -q $url -P $WORDLIST_DIR
  done
fi

if [[ ! -z ${IN_WORDLIST_DIR} ]]; then
  sed "s#${WORDLIST_DIR}#${IN_WORDLIST_DIR}#g" ./gobuster.sh #-i
fi

sudo cp ./gobuster.sh /usr/local/bin/gobuster
sudo chmod +x /usr/local/bin/gobuster
