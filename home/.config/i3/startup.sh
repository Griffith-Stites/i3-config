/bin/bash
wal -R
syncthing -no-browser
bluetoothctl power on
systemctl --user start mpris-proxy
xrdb -merge ~/.Xresources
redshift-gtk -t 6500:4000
imwheel -b 45
