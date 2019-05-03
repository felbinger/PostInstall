#!/bin/bash

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  mkdir /opt/burpsuite
  # download burpsuite.jar
  wget "https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=jar" -O /opt/burpsuite/burpsuite.jar

  # start script
  echo '#!/bin/bash' > "/opt/burpsuite/burpsuite.sh"
  echo '$(which java) -jar /opt/burpsuite/burpsuite.jar' >> "/opt/burpsuite/burpsuite.sh"
  chmod +x "/opt/burpsuite/burpsuite.sh"
  ln "/opt/burpsuite/burpsuite.sh" "/usr/bin/burpsuite"

  # get icon
  wget "https://www.macupdate.com/images/icons256/38118.png" -O /opt/burpsuite/burpsuite.png

  # create desktop launcher (burpsuite.desktop)
  echo "#!/usr/bin/env xdg-open" > "/opt/burpsuite/burpsuite.desktop"
  echo "[Desktop Entry]" >> "/opt/burpsuite/burpsuite.desktop"
  echo "Type=Application" >> "/opt/burpsuite/burpsuite.desktop"
  echo "Name=Burp Suite" >> "/opt/burpsuite/burpsuite.desktop"
  echo 'Exec=/bin/sh "/opt/burpsuite/burpsuite.sh"' >> "/opt/burpsuite/burpsuite.desktop"
  echo "Icon=/opt/burpsuite/burpsuite.png" >> "/opt/burpsuite/burpsuite.desktop"
  echo "Categories=Application;" >> "/opt/burpsuite/burpsuite.desktop"
  ln "/opt/burpsuite/burpsuite.desktop" "/usr/share/applications/burpsuite.desktop"
fi
