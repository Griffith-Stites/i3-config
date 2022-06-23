#!/bin/bash
echo -e "\nStarting Maeve's install script for Manjaro systems \n"
echo -e "\nUpdating OS:"
pacman -Syu 				# system update 
echo -e "\nFinished updating OS."
echo -e "\nUNINSTALL pre-packaged programs:"
sudo pacman -R palemoon-bin mousepad hexchat deluge epdfview xviewer

# Installer
echo -ne "Install programs for development [1-3]: 1. Yes | 2. No | 3. Quit install \n"
read x
if [ $x == 1 ]; then
  echo "Full install, including development tools"
  echo -e "\nStarting pacman installs:"
  sudo pacman -Su qutebrowser pass rofi ranger python-pywal r bluez trash-cli bluez-utils pulseaudio pulseaudio-bluetooth jupyterlab python syncthing firefox chromium libreoffice-fresh gimp pdfarranger inkscape transmission-gtk openvpn sshfs python-adblock pavucontrol scrot redshift atril ttf_apple_emoji bash-completion thunderbird clipit speedtest-cli gvim evince
  echo -e "\nSwitching to AUR installs via 'yay' AUR helper:"
  yay -Su franz-bin rstudio-desktop-bin spotify notion-app chromium-widevine zoom logiops nordvpn-bin pulseffects-legacy-git

elif [ $x == 2 ]; then
  echo "Minimal install"
  echo -e "\nStarting pacman installs:"
  sudo pacman -Su qutebrowser pass rofi ranger python-pywal r bluez trash-cli bluez-utils pulseaudio pulseaudio-bluetooth python syncthing firefox chromium gimp pdfarranger openvpn sshfs python-adblock pavucontrol scrot redshift atril ttf_apple_emoji bash-completion thunderbird clipit speedtest-cli gvim evince
  echo -e "\nSwitching to AUR installs via 'yay' AUR helper:"
  yay -Su franz-bin spotify notion-app chromium-widevine zoom logiops nordvpn-bin pulseffects-legacy-git
 
else
  echo "ERROR: Number not in selection range. Exiting install"
  exit
fi
