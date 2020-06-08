#!/usr/bin/env bash

shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist

BCPath='/share/bash-completion/bash_completion'
if [ -f "/usr$BCPath" ] && [ -r "/usr$BCPath" ]; then
    . "/usr$BCPath"
elif [ -f "$PREFIX$BCPath" ] && [ -r "$PREFIX$BCPath" ]; then
    . "$PREFIX$BCPath"
fi

APath="$HOME/.bash_aliases"
[ -f "$APath" ] && [ -r "$APath" ] && . "$APath"

HISTCONTROL=erasedups:ignoreboth
HISTSIZE=
HISTFILESIZE=

[ $UID -eq 0 ] && PS1='# ' || PS1='$ '
export PS1

unset BCPath APath

