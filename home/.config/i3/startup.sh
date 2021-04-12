#!/bin/bash
wal -R
bluetoothctl power on
systemctl --user start mpris-proxy
