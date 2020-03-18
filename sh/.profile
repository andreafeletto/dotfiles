#!/bin/sh

# TODO: https://wiki.archlinux.org/index.php/XDG_Base_Directory

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

for File in "$HOME"/.config/sh/*; do
	. "$File"
done

if command -v startx > /dev/null 2>&1; then
	[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
fi

