# if running bash
[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"

export EDITOR="nvim"
export BROWSER="chromium"
export TERMINAL="st"
export READER="zathura"
export NPM_CONFIG_USERCONFIG="$HOME/.config/npm/npmrc"
export GNUPGHOME="$HOME/.config/gnupg"
export QT_SELECT="4"
export _JAVA_AWT_WM_NONREPARENTING="1"
export ANDROID_HOME="$HOME/.local/android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"

# Rust
export CARGO_HOME="$HOME/.local/cargo"
export RUSTUP_HOME="$HOME/.local/rustup"

PATH="$PATH:$HOME/.scripts"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:/usr/local/go/bin"
PATH="$PATH:$HOME/go/bin"
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"
PATH="$PATH:/usr/local/plan9/bin"
PATH="$PATH:$HOME/.local/cargo/bin"
PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH

# History files
export HISTFILE="$HOME/history/bash_history"
export PYTHONSTARTUP="$HOME/.config/python/startup.py"
export LESSHISTFILE="$HOME/history/lesshst"

[ "$(tty)" = "/dev/tty1" ] && exec startx > /tmp/startx.log 2>&1

export PATH="$HOME/.cargo/bin:$PATH"
