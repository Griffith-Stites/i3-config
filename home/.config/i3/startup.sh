#!/bin/bash
wal -R
bluetoothctl power on
systemctl --user start mpris-proxy
systemctl --user start redshift
xmodmap ~/.Xmodmap