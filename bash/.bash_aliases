#!/usr/bin/env bash

# Enable sudo for Aliases
alias sudo='sudo '

# Add Verbosity
alias rm='rm -v'
alias mv='mv -v'
alias mkdir='mkdir -v'
alias cp='cp -v'
alias ln='ln -v'
alias chown='chown -v'
alias chmod='chmod -v'

# Add Color and Format
alias ll='ls -ahnvL --group-directories-first --color=auto'
alias lll='ls -ahnv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias less='less -N'

# Reload .bashrc
alias ref='source ~/.bashrc'

if type -fP rmtrash &> /dev/null; then
    alias rm='rmtrash -v'
fi

if type -fP calcurse &> /dev/null; then
    alias calcurse='calcurse -D $HOME/.config/calcurse'
fi

if type -fP docker &> /dev/null; then
    alias dps="docker ps --format \"table {{.Names}}\t{{.Image}}\t{{.Status}}\""
fi

if type -fP git &> /dev/null; then
    alias gs='git status'
    alias gd='git diff'
    alias gc='git commit -m'
    alias gl='git log --graph --pretty=oneline --abbrev-commit'
fi

if type -fP nvim &> /dev/null; then
    alias vim='nvim'
fi

if type -fP tree &> /dev/null; then
    alias tree='tree -ahC --dirsfirst -I .git'
fi

if type -fP irssi &> /dev/null; then
	alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"
fi

