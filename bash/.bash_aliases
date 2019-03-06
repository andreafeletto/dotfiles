
alias ref="source ~/.bashrc"

# calcurse
alias calcurse="calcurse -D $HOME/.config/calcurse"

# hledger
alias hld="gcloud compute scp --compress andrea@ledger:~/.hledger.journal $HOME/.hledger.journal"
alias hlc="gcloud compute ssh andrea@ledger"
alias hlz="bzip2 -kf $HOME/.hledger.journal"

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

if command -v lsd &> /dev/null; then
    alias ll='lsd --group-dirs first -al'
else
    alias ll='ls -ahl --group-directories-first'
fi
