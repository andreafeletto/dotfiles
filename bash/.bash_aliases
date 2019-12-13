
# UNIX commands
alias ll='ls -ahlLn --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias less='less -N'

alias ref="source ~/.bashrc"

# trash
alias rm="rmtrash"

# calcurse
alias calcurse="calcurse -D $HOME/.config/calcurse"

# docker
alias dps="docker ps --format \"table {{.Names}}\t{{.Image}}\t{{.Status}}\""

# git
alias gs="git status"
alias gd="git diff"
alias gc="git commit -m"

# ssh
alias hlc="ssh andrea@andreafeletto.com"

# neovim
command -v nvim >/dev/null && alias vim="nvim" vimdiff="nvim -d"

# termux
if command -v termux-open >/dev/null; then
    alias o="termux-open"
    alias hl='ledger -f .hledger.journal'
else
    alias hl="hledger"
fi

# arduino
if [ -x $HOME/arduino/arduino ]; then
    alias arduino="bash $HOME/arduino/arduino"
fi

