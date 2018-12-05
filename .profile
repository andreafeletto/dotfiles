# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export PATH="/usr/local/anaconda/bin:$PATH:$HOME/.scripts:$HOME/.local/bin"
export EDITOR="vim"
export BROWSER="qutebrowser"
export TERMINAL="urxvt"

# Start graphical server if i3 not already running
if [ "$(tty)" = "/dev/tty1" ] ; then
    pgrep -x i3 || exec startx
fi

