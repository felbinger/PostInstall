#!/bin/bash

# Install armitage

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  wget -qO- http://www.fastandeasyhacking.com/download/armitage150813.tgz | tar xz -C /opt/
  mv /opt/armitage/armitage /opt/armitage/armitage.org

  echo '#!/bin/bash' > /opt/armitage/armitage
  echo 'java -XX:+AggressiveHeap -XX:+UseParallelGC -jar /opt/armitage/armitage.jar $@' >> /opt/armitage/armitage

  chmod +x /opt/armitage/armitage
  ln /opt/armitage/armitage /usr/bin/armitage
  ln /opt/armitage/teamserver /usr/bin/teamserver

  # Creating Launcher
  location="/opt/armitage/armitage.desktop"
  echo '[Desktop Entry]' > $location
  echo 'Terminal=false' >> $location
  echo 'Name=Armitage' >> $location
  echo 'Exec=armitage' >> $location
  echo 'Type=Application' >> $location
  echo 'Icon=/opt/armitage/armitage-logo.png' >> $location
  ln $location /usr/share/applications/
fi
