#!/bin/bash

# Install metasploit framework

if [ `/usr/bin/id -u` != "0" ]; then
  echo "Please run the script as root!"
else
  #TODO change uid of postgres
  cd /opt
  wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run -O /opt/metasploit-installer.run
	chmod u+x /opt/metasploit-installer.run
	./metasploit-installer.run --mode unattended
	rm /opt/metasploit-installer.run

  # Set new UID for postgres user to prevent that the user is available for login in gdm (uid under 1000)
  /etc/init.d/metasploit stop
  uid=666
  while true; do
    id $uid >& /dev/null
    if [[ $? -eq 1 ]]; then
      usermod -u $uid postgres
      /etc/init.d/metasploit start
      break
    else
      uid=$((uid+1))
      continue
    fi
  done
fi
