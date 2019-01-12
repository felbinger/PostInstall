#!/bin/bash

# Install NetXMLtoCSV

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  git clone https://github.com/MichaelCaraccio/NetXML-to-CSV.git /opt/NetXMLtoCSV
  # add #!/usr/bin/python to the first line of the script to make it work out of /usr/bin without interpreter call (python /opt/NetXMLtoCSV/main.py)
  sed -i '1s/^/#!\/usr\/bin\/python\n/' /opt/NetXMLtoCSV/main.py
  chmod +x /opt/NetXMLtoCSV/main.py
  ln /opt/NetXMLtoCSV/main.py /usr/bin/NetXMLtoCSV
fi
