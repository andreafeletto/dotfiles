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
status &

# bluetooth manager
blueman-applet &

# network manager
nm-applet &

# window manager
exec dwm
