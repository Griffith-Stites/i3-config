#!/bin/bash
echo -e "\nStarting Maeve's install script for Manjaro systems \n"
echo -e "\nUpdating OS\n"
pacman -Syu 				# system update 
echo -e "\nFinished updating OS\n"
echo -e "\nUNINSTALL pre-packaged programs\n"
sudo pacman -R palemoon-bin mousepad hexchat deluge epdfview xviewer
echo -e "\nStarting install batch #1: qutebrowser, pass, rofi, ranger, python-pywal, r\n"
sudo pacman -Su qutebrowser pass rofi ranger python-pywal r
echo -e "\nBatch 2: bluez, trash-cli, bluez-utils, pulseaudio, pulseaudio-bluetooth, jupyterlab\n"
sudo pacman -Su bluez trash-cli bluez-utils pulseaudio pulseaudio-bluetooth jupyterlab
echo -e "\nBatch 3: python, syncthing, firefox, chromium, libreoffice-fresh, gimp, pdfarranger\n"
sudo pacman -Su python syncthing firefox chromium libreoffice-fresh gimp pdfarranger
echo -e "\nBatch 4: inkscape, transmission-gtk, atom, openvpn, sshfs, python-adblock, pavucontrol, scrot\n"
sudo pacman -Su inkscape transmission-gtk atom openvpn sshfs python-adblock pavucontrol scrot
echo -e "\nBatch 5: redshift, atril, ttf_apple_emoji, bash-completion, thunderbird, clipit, speedtest-cli\n"
sudo pacman -Su redshift atril ttf_apple_emoji bash-completion thunderbird clipit speedtest-cli
echo -e "\nBatch 6: xmodmap"
sudo pacman -Su xorg-xmodmap

## YAY
echo -e "\nSwitching to AUR installs via 'yay' AUR helper\n"
yay -Su franz-bin rstudio-desktop-bin spotify notion-app
yay -Su chromium-widevine zoom logiops nordvpn-bin pulseffects-legacy-git


## TO DO #####
# - add propmt for desktop option
# - add monitor settings script option
