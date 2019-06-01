xset b off
xset r rate 200 50
setxkbmap -layout it
sxhkd &>> /tmp/sxhkd.log &
[ ! -s ~/.config/mpd/pid ] && mpd
status &
blueman-applet &
nm-applet &
/usr/lib/notification-daemon-1.0/notification-daemon &
exec dwm
