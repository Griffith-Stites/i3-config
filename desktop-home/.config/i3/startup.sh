#!/bin/bash
wal -R
bluetoothctl power on
systemctl --user start mpris-proxy
xrdb -merge ~/.Xresources
redshift
nm-applet
xfce4-power-manager
syncthing -no-browser
redshift -t 6500:3500
imwheel -b 45
