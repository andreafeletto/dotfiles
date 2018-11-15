
# Programs
alias v="vim"
alias r="ranger"
alias g="git"
alias mkd="mkdir -pv"
alias ref="source ~/.bashrc"

if command -v termux-open >/dev/null; then
    alias o="termux-open"
    alias hl='ledger -f .hledger.journal'
else
    alias hl="hledger"
fi

function cerca() {
    look $1 $DICT/parole
}

# Colors
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -ahl"
