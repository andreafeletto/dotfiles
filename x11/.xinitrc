xset b off
xset r rate 200 50
setxkbmap -layout it
xrdb ~/.Xdefaults
blueman-applet &
nm-applet &
status &
sxhkd &
/usr/lib/notification-daemon-1.0/notification-daemon &
exec dwm
