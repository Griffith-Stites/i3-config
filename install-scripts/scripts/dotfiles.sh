#!/bin/bash
echo -e "\nInstalling user dotfiles from GitHub"
git clone https://github.com/mstites/linux-config.git ~/Downloads/linux-config
echo -ne "Select install [1-3]: 1. Laptop | 2. Desktop config | 3. Exit \n"
read x
if [ $x == 1 ]; then
  echo "Installing laptop dotfiles"
  \cp -r ~/Downloads/linux-config/home/. ~/.
elif [ $x == 2 ]; then
  echo "Installing desktop dotfiles"
  \cp -r ~/Downloads/linux-config/home/. ~/.
  \cp -r ~/Downloads/linux-config/desktop-home/. ~/.
else
  echo "ERROR: Number not in selection range. Exiting install"
  exit
fi

echo -ne "Auto install root files [y, n]?"
read x
if [ $x == "y" ]; then
  echo -e "\nInstalling root files from GitHub"
  \cp -r ~/Downloads/linux-config/system/. /.
else
  exit
fi
