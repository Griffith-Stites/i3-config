# Nordvpn Install
1. AUR: https://aur.archlinux.org/packages/nordvpn-bin/
2. sudo systemctl enable nordvpnd.service
3. sudo systemctl start nordvpnd.service

# Mount home server
1. Install davfs2
2. sudo mkdir /mnt/homeNAS/
3. sudo mount -t davfs -o noexec http://136.61.220.201:1000/syncthing/ /mnt/homeNAS/
4. Enter credentials

# Time Setting
https://www.tecmint.com/synchronize-time-with-ntp-in-linux/
