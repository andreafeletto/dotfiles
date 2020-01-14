#!/bin/sh

# disable bell sound
xset b off

# autorepeat:
# delay before autorepeat = 200ms
# repeat rate = 50ms
xset r rate 200 50

# set keyboard layout
setxkbmap -layout it

# simple X hotkey daemon
sxhkd &>> /tmp/sxhkd.log &

# music player deamon
[ ! -s ~/.config/mpd/pid ] && mpd

# dwm statusbar script
status -d

# bluetooth manager
blueman-applet &

# network manager
nm-applet &

# udiskie with tray icon and udisks2 backend
udiskie --automount --no-notify --smart-tray --use-udisks2 &

# notification daemon
twmnd &

# window manager
exec dwm
