#!/bin/sh

# Source: https://wiki.archlinux.org/title/NetworkManager#nm-applet

nm-applet    2>&1 > /dev/null &
stalonetray  2>&1 > /dev/null
killall nm-applet