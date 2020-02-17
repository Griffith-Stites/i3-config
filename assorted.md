## Nordvpn Install
1. AUR: https://aur.archlinux.org/packages/nordvpn-bin/
2. sudo systemctl enable nordvpnd.service
3. sudo systemctl start nordvpnd.service

## Mount home server
1. Install davfs2
2. sudo mkdir /mnt/homeNAS/
3. sudo mount -t davfs -o noexec http://136.61.220.201:1000/syncthing/ /mnt/homeNAS/
4. Enter credentials

## Time Setting
https://www.tecmint.com/synchronize-time-with-ntp-in-linux/

## Greenfoot
* Download Java8 JDK and JRE
  * Oracle versions with javafx
* Download pure java version: Download
* Run with command sudo java -jar GREENFOOT FILE NAME
* Select Directory to install to
  * /usr/bin/greenfoot is my recommendations
* Select Java JDK Directory
  * Mine was at /usr/lib/jvm/java-1.8.0-openjdk-amd64
* Press install

## Java
* [with apt](https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04)
* [java fx](https://askubuntu.com/questions/1091157/javafx-missing-ubuntu-18-04)
* [JDK Install](https://docs.oracle.com/javase/8/docs/technotes/guides/install/linux_jdk.html#BJFJJEFG)
* [JRE Install](https://docs.oracle.com/javase/8/docs/technotes/guides/install/linux_jre.html#CFHIEGAA)
* Check version: java-version
* sudo update-alternatives --config java

## Screenshots
* scrot

## System Restore
* TimeShift

## Dropbox
* [Fix Sync Issues](https://askubuntu.com/questions/247461/how-do-i-fix-a-cant-access-dropbox-folder-error)

## Aliases
1. Edit ~/.bashrc
2. Edit commands at bottom
3. Reload with source ~/.bashrc

## [Nvidia Optimus](https://www.dell.com/support/article/gu/en/gubiz1/sln298431/a-guide-to-nvidia-optimus-on-dell-pcs-with-an-ubuntu-operating-system?lang=en)
* Nvidia-settings to switch between intel and nvidia
* sudo prime-select ##### sets default
  * Intel or nvidia
* sudo prime-select query

## UML Diagrams
* Pyreverse
* pyreverse -ASmy -k -o png game.py -p Main

## Terminal Transparency
* [Guide](https://www.reddit.com/r/i3wm/comments/2yytvs/make_terminals_transparent/)

## PDF Editor
* PDFarranger

## Scroll Speed
* [imwheelrc](www.webupd8.org/2015/12/how-to-change-mouse-scroll-wheel-speed.html)
  * Start with imwheel -b 45 to only look at scroll input

## Install Fonts
* Download Font
* Move to /usr/share/fonts

## Remmina
* Install from aur: https://aur.archlinux.org/packages/remmina-git
* Install rdesktop for rdp support: https://aur.archlinux.org/packages/remmina-plugin-rdesktop/
