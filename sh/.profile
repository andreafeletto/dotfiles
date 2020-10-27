#!/bin/sh

export EDITOR='nvim'
if [ -n "$DISPLAY" ]; then
    export BROWSER='chromium'
else
    export BROWSER='w3m'
fi
export TERMINAL='st'
export READER='zathura'
export WM='dwm'

export _JAVA_AWT_WM_NONREPARENTING='1'

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## __  ______   ____
## \ \/ /  _ \ / ___|
##  \  /| | | | |  _
##  /  \| |_| | |_| |
## /_/\_\____/ \____|
## 

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Android
export ANDROID_HOME="$HOME/.local/android/sdk"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ANDROID_AVD_HOME="$XDG_DATA_HOME/android"
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME/android"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"

# Bash
export HISTFILE="$XDG_CACHE_HOME/bash/history"

# GnuPG
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

# Go
export GOPATH="$XDG_DATA_HOME/go"

# Gramps
export GRAMPSHOME="$XDG_CONFIG_HOME"

# IPython
export IPYTHONDIR="$XDG_CONFIG_HOME/jupyter"

# Jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"

# Less
export LESSKEY="$XDG_CONFIG_HOME/less/lesskey"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# Node.js
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"

# Npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Octave
export OCTAVE_HISTFILE="$XDG_CACHE_HOME/octave-hsts"

# OpenSSL
export RANDFILE="$XDG_DATA_HOME/openssl/rnd"

# Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"

# Pylint
export PYLINTHOME="$XDG_CACHE_HOME/pylint"

# Readline
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

# Ruby
export GEM_HOME="$XDG_DATA_HOME/gem"
export GEM_SPEC_CACHE="$XDG_CACHE_HOME/gem"

# Rust
export CARGO_HOME="$HOME/.local/cargo"
export RUSTUP_HOME="$HOME/.local/rustup"

# wget
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

##  ____   _  _____ _   _
## |  _ \ / \|_   _| | | |
## | |_) / _ \ | | | |_| |
## |  __/ ___ \| | |  _  |
## |_| /_/   \_\_| |_| |_|
## 

PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.local/cargo/bin"
PATH="$PATH:$HOME/go/bin"
PATH="$PATH:$GEM_HOME/bin"
PATH="$PATH:$XDG_DATA_HOME/npm/bin"
PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH

##  _____ _____ _____
## |  ___|  ___|  ___|
## | |_  | |_  | |_
## |  _| |  _| |  _|
## |_|   |_|   |_|
## 

export FFF_HIDDEN=0
export FFF_KEY_SCROLL_UP2='off'
export FFF_KEY_SCROLL_DOWN2='off'
export FFF_KEY_PARENT2='off'
export FFF_KEY_CHILD2='off'

