xset b off
xset r rate 200 50
setxkbmap -layout it
blueman-applet &
nm-applet &
status &
sxhkd &>> /tmp/sxhkd.log &
/usr/lib/notification-daemon-1.0/notification-daemon &
exec dwm
