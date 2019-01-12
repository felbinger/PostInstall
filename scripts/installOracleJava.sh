#!/bin/bash

# This script installs Oracle JDK (Java)

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  echo "Oracle JDK not implemented yet"
  #apt remove --purge openjdk-8-jre openjdk-8-jre-headless
  # How to download: http://www.oracle.com/technetwork/java/javase/downloads/index.html
  #wget -qO- DownloadURL | tar xvC /opt/java
  #update-alternatives --install "/usr/bin/java" "java" "/opt/java/bin/java" 1
fi
