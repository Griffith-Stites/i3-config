#!/bin/bash
wal -R
bluetoothctl power on
systemctl --user restart mpris-proxy
systemctl --user restart redshift
xrdb -merge ~/.Xresources
nm-applet
xfce4-power-manager
syncthing -no-browser
imwheel -b 45
