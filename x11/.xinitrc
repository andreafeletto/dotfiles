#!/usr/bin/env sh

# disable bell sound
xset b off

# autorepeat:
# delay before autorepeat = 200ms
# repeat rate = 50ms
xset r rate 200 50

# set keyboard layout
setxkbmap -layout it

setxkbmap -option "caps:swapescape"

[ -f "$HOME/.xprofile" ] && . "$HOME/.xprofile"

# window manager
case "$WM" in
    dwm) exec dwm ;;
    *)   echo "$WM window manager not found." ;;
esac
