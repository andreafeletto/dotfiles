#!/bin/sh

xset b off
xset r rate 200 50

setxkbmap -layout it
setxkbmap -option "caps:swapescape"

export _JAVA_AWT_WM_NONREPARENTING='1'

sxhkd &
cstatus &
nm-applet &
udiskie --automount --no-notify --smart-tray &
blueman-applet &
twmnd &

exec dwm
