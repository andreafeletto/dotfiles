#!/usr/bin/env bash

case $- in
	*i*) ;;
	*) return ;;
esac

shopt -s histappend
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist

BCPath='/usr/share/bash-completion/bash_completion'
[ -r "$BCPath" ] && . "$BCPath"
unset BCPah

APath="$HOME/.bash_aliases"
[ -r "$APath" ] && . "$APath"
unset APath

HISTCONTROL=erasedups:ignoreboth
HISTSIZE=
HISTFILESIZE=

[ $UID -eq 0 ] && PS1='# ' || PS1='$ '
export PS1
