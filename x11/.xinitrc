#!/bin/sh

xset b off
xset r rate 200 50

setxkbmap -layout it
setxkbmap -option "caps:swapescape"

sxhkd &
cstatus &
nm-applet &
udiskie --automount --no-notify --smart-tray &
twmnd >/dev/null &

exec dwm
