#!/bin/bash
# restore wal
wal -R
bluetoothctl power on
systemctl --user restart mpris-proxy
systemctl --user restart redshift
xmodmap ~/.Xmodmap