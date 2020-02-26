#!/bin/bash

shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist

BCPath='/usr/share/bash-completion/bash_completion'
[ -f "$BCPath" ] && [ -r "$BCPath" ] && . "$BCPath"

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

