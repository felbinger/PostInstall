#!/bin/bash

sudo docker build -t impacket -f ./Dockerfile .
sudo cp ./impacket.sh /usr/local/bin/impacket
sudo cp ./smbhere.sh /usr/local/bin/smbhere
sudo chmod +x /usr/local/bin/{impacket,smbhere}
