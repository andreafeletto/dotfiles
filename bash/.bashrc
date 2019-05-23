#!/bin/bash

shopt -s autocd histappend

HISTSIZE=
HISTFILESIZE=

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if command -v termux-open >/dev/null; then
    export PS1="\w \$ "
elif [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

[ -f "$HOME/.bash_aliases" ] && source "$HOME/.bash_aliases"
