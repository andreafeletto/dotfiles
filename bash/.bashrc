#!/bin/bash

shopt -s autocd histappend
. /usr/share/bash-completion/bash_completion

HISTSIZE=
HISTFILESIZE=

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if command -v termux-open >/dev/null; then
    export PS1="\w \$ "
elif ! command -v powerline-shell >/dev/null; then
    export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
elif [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
