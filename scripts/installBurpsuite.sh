#!/bin/bash

# Install burpsuite

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  #TODO Not working - "tail didn't work. This could be caused by exhausted disk space. Aborting."
  #wget -qO- "https://portswigger.net/burp/releases/download?productid=100&version=1.7.23&type=linux" | bash

  wget -q "https://portswigger.net/burp/releases/download?productid=100&version=1.7.23&type=linux" -O /tmp/burpsuite.sh
  bash /tmp/burpsuite.sh
  #TODO user interaction required - no text/unattended mode?

  mv /opt/burpsuite/BurpSuiteFree /opt/burpsuite/burpsuite
  mv /opt/burpsuite/BurpSuiteFree.png /opt/burpsuite/burpsuite.png

  ln /opt/burpsuite/burpsuite /usr/bin/burpsuite

	location="/opt/burpsuite/burpsuite.desktop"
	echo "#!/usr/bin/env xdg-open" > $location
	echo "[Desktop Entry]" >> $location
	echo "Type=Application" >> $location
	echo "Name=Burp Suite" >> $location
	echo 'Exec=/bin/sh "/opt/burpsuite/burpsuite"' >> $location
	echo "Icon=/opt/burpsuite/.install4j/burpsuite.png" >> $location
	echo "Categories=Application;" >> $location
	ln $location /usr/share/applications/burpsuite.desktop
fi
