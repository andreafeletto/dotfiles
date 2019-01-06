xset b off
xset r rate 200 50
setxkbmap -layout it
xrdb ~/.Xdefaults
blueman-applet &
nm-applet &
dwmstatus 2>&1 >/dev/null &
exec i3
