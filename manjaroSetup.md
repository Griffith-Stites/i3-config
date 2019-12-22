Process:

1.  Install firefox with pacman

1.  Set default with exo-preferred-applications

2.  Also edit

1.  ~/.profile

2.  ~/.config/mimeapps.list

3.  Fix i3 commands:[ i3](https://i3wm.org/docs/userguide.html#_default_keybindings)

4.  Install Timeshift with pacman

5.  Fix keyboard

1.  I used gedit

7.  File manager

1.  pcmanfm

2.  Exo-preferred-applications

9.  Mailspring

1.  <https://aur.archlinux.org/packages/mailspring/>

2.  Install dependencies

3.  Tar xf the file

4.  Cd mailspring

5.  makepkg -si

11. Brightness

1.  Pacman -Su xfce4-power-manager

2.  Add to i3 config: ~/.config/i3/config

13. Sound

1.  Install pulseaudio

2.  Install pavucontrol

3.  pacmd unload-module module-udev-detect && pacmd load-module module-udev-detect

1.  To refresh devices

15. Spotify

1.  <https://aur.archlinux.org/packages/spotify/>

2.  gpg --recv-keys 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45

3.  AUR

17. Text Editor

1.  Atom from pac

19. Anaconda3

20. Keyboard

1.  Swap US and PC files with personal

2.  Install xbindkeys with pac

3.  touch ~/.xbindkeysrc

4.  Gedit

5.  Add [config](https://docs.google.com/document/d/15iKIl0b4EUEPQIXdSK87gqHGkvJg0ZPD_lD65a60iOI/edit)

6.  Add xbindkeys to startup app in i3 config

22. I3 Bar

1.  Updated by i3status program

1.  Edit i3status.conf

3.  [Commands](https://i3wm.org/i3status/manpage.html)

4.  Acpi command gives time remaining

24. xI3

1.  Background:

1.  Nitrogen

2.  Add exec --no-startup-id nitrogen --restore to config

26. Battery

1.  Install bbswitch

AUR

1.  Install dependencies?

2.  Tar xf the file

3.  Cd into file

4.  makepkg -si

Allow More Threads for Installs

RPM and DEB

-   RPM:[  https://unix.stackexchange.com/questions/115245/install-rpm-file-on-arch-linux](https://unix.stackexchange.com/questions/115245/install-rpm-file-on-arch-linux)

-   DEB:[  https://www.maketecheasier.com/install-deb-package-in-arch-linux/](https://www.maketecheasier.com/install-deb-package-in-arch-linux/)

-   https://www.maketecheasier.com/install-deb-package-in-arch-linux/

Desktop Wifi

-   Install sh script from [company website](http://www.szedup.com/support/driver-download/ep-db1607-driver/)

-   Run sh script

-   [Arch Linux Network Manager](https://linuxhint.com/arch_linux_network_manager/)

-   sudo pacman -S wpa_supplicant wireless_tools networkmanager

-   sudo pacman -S nm-connection-editor network-manager-applet

-
