
# Programs
alias v="vim"
alias r="ranger"
alias g="git"
alias mkd="mkdir -pv"
alias ref="source ~/.bashrc"
alias hld="gcloud compute scp andrea@ledger:~/.hledger.journal $HOME/.hledger.journal"
alias hlc="gcloud compute ssh andrea@ledger"
alias hlz="bzip2 -k $HOME/.hledger.journal"
alias sudomanoncorro="sudo"

if command -v termux-open >/dev/null; then
    alias o="termux-open"
    alias hl='ledger -f .hledger.journal'
else
    alias hl="hledger"
fi

if [ -x $HOME/arduino/arduino ]; then
    alias arduino="bash $HOME/arduino/arduino"
fi

function cerca() {
    look $1 $DICT/parole
}

# Colors
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -ahl"
