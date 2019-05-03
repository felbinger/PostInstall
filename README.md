# Linux Mint 19.1 Installation Checklist

## Pre Install
Backup your Data, don't forget the following:
* SSH Key's in `~/.ssh/`
* PGP Key's (`gpg export`)
* Mozilla Thunderbird/Firefox, Google Chrome profiles (if you do this, you don't have to reconfigurate everthing like E-Mails, Addons, ...)
* Remmina Configs (`~/.local/share/remmina`)

## Post Install
* Software Sources - change to the best performing repository servers
  ![Software Sources](./img/software_sources.png)  

---

* Execute the scripts you want

---


* Nemo (Edit/Preferences):
  ![Nemo Settings: Views](./img/nemo_views.png)

  ![Nemo Settings: Behavior](./img/nemo_behavior.png)

  ![Nemo Settings: Toolbar](./img/nemo_toolbar.png)

  Press CTRL + L one time to make the URL bar editable. It shouln't look like this:
  ![Nemo:](./img/nemo_head_wrong.png)

  This is what it should look like:  
  ![Nemo: current path](./img/nemo_head.png)

---

* System Settings
  * Date and Time  
  ![Settings: Date and Time](./img/settings_date_time.png)

  * Mouse and Touchpad  

  * Desktop  
  ![Settings: Desktop](./img/settings_desktop.png)

  * Applets  

  * Sound  

  * Printers  

  * Preferred Applications  
  ![Settings: Preferred Applications](./img/settings_preferred_applications.png)

  * Startup Applications  

---

* If you encrypted your home directory, don't forget to save the output of `ecryptfs-unwrap-passphrase` on a save place.
