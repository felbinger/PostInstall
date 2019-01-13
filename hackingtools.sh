#!/bin/bash

# Install hacking, stego and crypto tools

WORDLIST_DIR="/opt/wordlists"

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  apt install -y nmap xsltproc sqlmap hydra john tcpdump sslstrip binwalk fcrackzip pdfcrack gdb p0f nbtscan
  #apt install -y aircrack-ng reaver kismet
  bash scripts/installHashcat.sh

  # gui tools
  bash scripts/installWireshark.sh
  bash scripts/installAngryIPScanner.sh
  bash scripts/installBurpsuite.sh
  apt install -y ettercap-graphical

  # DSniff
  apt install -y dsniff

  # Driftnet
  apt install -y driftnet

  # MacChanger
  bash scripts/installMacchanger.sh

  # social-engeneering-toolkit
  #bash scripts/installSET.sh
  
  # Metasploit Framework
  #bash scripts/installMetasploit.sh

  # Armitage
  #bash scripts/installArmitage.sh

  ### Wordlists ###
  mkdir $WORDLIST_DIR
  wget -qO- http://downloads.skullsecurity.org/passwords/rockyou.txt.bz2 | bunzip2 > $WORDLIST_DIR/rockyou.txt
  wget -qO- http://downloads.skullsecurity.org/passwords/500-worst-passwords.txt.bz2 | bunzip2 > $WORDLIST_DIR/500-worst-passwords.txt
  wget -qO- http://downloads.skullsecurity.org/passwords/twitter-banned.txt.bz2 | bunzip2 > $WORDLIST_DIR/twitter-banned.txt
  wget -q https://github.com/diasdavid/node-dirbuster/blob/master/lists/directory-list-2.3-small.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/raw/master/lists/directory-list-2.3-big.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/blob/master/lists/directory-list-lowercase-2.3-small.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/raw/master/lists/directory-list-lowercase-2.3-medium.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/raw/master/lists/directory-list-lowercase-2.3-big.txt -O $WORDLIST_DIR
  wget -q https://github.com/diasdavid/node-dirbuster/raw/master/lists/directory-list-1.0.txt -O $WORDLIST_DIR
  wget -q https://raw.githubusercontent.com/diasdavid/node-dirbuster/master/lists/apache-user-enum-1.0.txt -O $WORDLIST_DIR
  wget -q https://raw.githubusercontent.com/diasdavid/node-dirbuster/master/lists/apache-user-enum-2.0.txt -O $WORDLIST_DIR
fi
