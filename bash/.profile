# if running bash
[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

export EDITOR="nvim"
export BROWSER="firefox"
export TERMINAL="st"
export READER="zathura"
export NPM_CONFIG_USERCONFIG="$HOME/.config/npm/npmrc"

PATH="/usr/local/anaconda/bin:$PATH"
PATH="$PATH:$HOME/.scripts"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$HOME/go/bin"
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
PATH="$PATH:/usr/local/plan9/bin"
export PATH

# History files
export HISTFILE="$HOME/history/bash_history"
export PYTHONSTARTUP="$HOME/.config/python/startup.py"
export LESSHISTFILE="$HOME/history/lesshst"

( [ "$(tty)" = "/dev/tty1" ] && ! pgrep -x dwm ) && exec startx > /tmp/startx.log 2>&1
