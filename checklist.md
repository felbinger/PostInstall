# Linux Mint 19 Installation Checklist
## Pre Install
Choose which scripts you wan't to run, comment the one out you won't run.

Backup your Data, don't forget the following:
* SSH Key's in `~/.ssh/`
* PGP Key's (`gpg export`)
* Mozilla Thunderbird, Mozilla Firefox, Google Chrome profiles (if you do this, you don't have to reconfigurate everthing like E-Mails, Addons, ...)
* Remmina Configs (`~/.local/share/remmina`)

## Post Install
* Software Sources - change to the best performing repository servers
* Execute the PostInstall scripts.

* Terminal: Edit/Preferences  
  The software htop use the key's (F1 to F10), you should remove the menu accelerator key (F10 by default) or switch to another Terminal (like Terminator) if you want to use htop.

* Nemo  
  Edit/Preferences: View new folders using: List View
  Press CTRL + L one time to make the URL bar editable

* System Settings
  * Date and Time
  * Mouse and Touchpad
  * Desktop
  * Applets
  * Sound
  * Printers
  * Preferred Applications
  * Startup Applications

* If you encrypted your home directory, don't forget to save the output of `ecryptfs-unwrap-passphrase` on a save place.
