# auto-cd and append to history
shopt -s autocd histappend

# Bash prompt.
if command -v termux-open >/dev/null; then
    export PS1="\w \$ "
else
    export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

# Infinite history
HISTSIZE= HISTFILESIZE=

# Alias definitions.
[ -f ~/.bash_aliases ] && source ~/.bash_aliases
