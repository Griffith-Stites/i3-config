#!/bin/bash
echo -e "\nStarting Maeve's install script for Manjaro systems \n"
echo -e "\nUpdating OS:"
pacman -Syu 				# system update 
echo -e "\nFinished updating OS."
echo -e "\nUNINSTALL pre-packaged programs [palemoon-bin, mousepad, hexchat, deluge, epdfview, xviewer]:"
sudo pacman -R palemoon-bin mousepad hexchat deluge epdfview xviewer

# Installer
echo -ne "Install programs for development [1-3]: 1. Yes | 2. No | 3. Quit install \n"
read x
if [ $x == 1 ]; then
  echo "Full install, including development tools"
  echo -e "\nStarting pacman installs:"
  sudo pacman -Su qutebrowser pass rofi ranger python-pywal r bluez trash-cli bluez-utils pulseaudio pulseaudio-bluetooth jupyterlab python syncthing firefox chromium libreoffice-fresh gimp pdfarranger inkscape transmission-gtk openvpn sshfs python-adblock pavucontrol scrot redshift atril ttf_apple_emoji bash-completion thunderbird clipit speedtest-cli gvim evince
  echo -e "\nSwitching to AUR installs via 'yay' AUR helper:"
  yay -Su franz-bin rstudio-desktop-bin spotify notion-app chromium-widevine zoom nordvpn-bin pulseffects-legacy

elif [ $x == 2 ]; then
  echo "Minimal install"
  echo -e "\nStarting pacman installs:"
  sudo pacman -Su qutebrowser pass rofi ranger python-pywal bluez trash-cli bluez-utils pulseaudio pulseaudio-bluetooth python syncthing firefox chromium gimp pdfarranger openvpn sshfs python-adblock pavucontrol scrot redshift atril ttf_apple_emoji bash-completion thunderbird clipit speedtest-cli gvim evince
  echo -e "\nSwitching to AUR installs via 'yay' AUR helper:"
  yay -Su franz-bin spotify notion-app chromium-widevine zoom nordvpn-bin pulseffects-legacy
 
elif [ $x == 3 ]; then
  echo "Exiting Install"
  exit
else
  echo "ERROR: Number not in selection range. Exiting install"
  exit
fi

echo -ne "Install device specific programs [1-4]? [1. Laptop, 2. Desktop, 3. Surface, 4. None]"
read x
if [ $x == 1]; then
  echo "Laptop specific applications"
  echo "No current laptop specific applications"
elif [ $x == 2]; then
  echo "Desktop specific applications"
  sudo pacman -Su logiops
elif [ $x == 3]; then
  echo "Surface specific applications"
  echo "NOT YET IMPLEMENTED"
fi