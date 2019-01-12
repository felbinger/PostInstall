#!/bin/bash

# This script installs the teamspeak3 client

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -q http://dl.4players.de/ts/releases/3.1.8/TeamSpeak3-Client-linux_amd64-3.1.8.run -O teamspeak3client.run
  chmod u+x teamspeak3client.run
  ./teamspeak3client.run --noprogress --quiet --target /opt/teamspeak3client
  # TODO user interaction required (ENTER, q, y, ENTER)
  rm teamspeak3client.run

  mv ../img/icons/teamspeak.png /opt/teamspeak3client/

  # Creating Launcher
  location="/opt/teamspeak3client/teamspeak3.desktop"
  echo '[Desktop Entry]' > $location
  echo 'Terminal=false' >> $location
  echo 'Name=TeamSpeak3' >> $location
  echo 'Exec=teamspeak3' >> $location
  echo 'Type=Application' >> $location
  echo 'Icon=/opt/teamspeak3client/teamspeak.png' >> $location
  ln $location /usr/share/applications/
fi
