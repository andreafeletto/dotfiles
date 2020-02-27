#!/bin/bash

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

if [ $UID -eq 0 ]; then
    export PS1='# '
else
    export PS1='$ '
fi

unset BCPath APath

