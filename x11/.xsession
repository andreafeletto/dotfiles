#!/bin/sh

# disable bell sound
xset b off

# autorepeat:
# delay before autorepeat = 200ms
# repeat rate = 50ms
xset r rate 200 50

setxkbmap -layout it
setxkbmap -option "caps:swapescape"

sxhkd &
cstatus -d 2>/dev/null &
nm-applet &
udiskie --automount --no-notify --smart-tray &
twmnd >/dev/null &
jupyter lab 2> "${XDG_DATA_DIR:-$HOME/.local/share}/jupyter/log" &

feh --no-fehbg --bg-scale pictures/wallpapers/free-as-in-freedom.png &

exec dwm

