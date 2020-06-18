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

## UML Diagrams
* Pyreverse
* pyreverse -ASmy -k -o png game.py -p Main

## PDF Editor
* PDFarranger

## Scroll Speed
* [imwheelrc](www.webupd8.org/2015/12/how-to-change-mouse-scroll-wheel-speed.html)
  * Start with imwheel -b 45 to only look at scroll input

## Remmina
* Install from aur: https://aur.archlinux.org/packages/remmina-git
* Install rdesktop for rdp support: https://aur.archlinux.org/packages/remmina-plugin-rdesktop/

## Remove Keyring Password
* [Install Seahorse](https://www.fosslinux.com/2561/how-to-disable-keyring-in-ubuntu-elementary-os-and-linux-mint.htm)

## Emojis
* https://victor.kropp.name/blog/emoji-on-linux/

## Google Drive Backup (rclone)
* https://www.howtogeek.com/451262/how-to-use-rclone-to-back-up-to-google-drive-on-linux/

## Ranger open fix
* https://www.reddit.com/r/ranger/comments/f6b6u7/how_to_open_containing_folder_with_ranger/

## Audio visualizers
* projectm-pulseaudio
* cava

## Qutebrowser pywal
* https://gitlab.com/jjzmajic/qutewal

## Browser
* update in ~/.profile
* update mimeapps.list
* Use xdg-settings (eg xdg-settings set default-web-browser org.qutebrowser.qutebrowser.desktop)
  * Can clear browser with unset browser
* Update BROWSER in bashrc
* Make sure browser has desktop app in /usr/share/applications/, /usr/local/share/applications/, or ~/.local/share/applications/

## Canon
* cnijfilter-common 4.10-2
https://aur.archlinux.org/packages/cnijfilter2/

## Pass
* Password manager
* init: pass -p SYNCTHING FOLDER init "KEY HERE"
  * This key should match the key name generated using gpg2 --generate-key
* Use lastpsas key
* pass Update
* upass - interactive environment w/ search

## Grub custimization
* Use grub custimizer
* themes can be downloaded and placed in /boot/grub/themes (must run sudo -s first)
* themes/backgrounds can be selected in /etc/default/grub
* backup created by grub customizer can be found in /etc/grub.d/backup/
