#!/bin/bash
wal -R
bluetoothctl power on
systemctl --user restart mpris-proxy
systemctl --user restart redshift
xmodmap ~/.Xmodmap