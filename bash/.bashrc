# auto-cd and append to history
shopt -s autocd histappend

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if command -v termux-open >/dev/null; then
    export PS1="\w \$ "
elif [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Infinite history
HISTSIZE= HISTFILESIZE=

# Alias definitions.
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
