
unlet! skip_defaults_vim

let mapleader=" "

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-multiple-cursors'
call plug#end()

" Basics
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set smarttab autoindent smartindent cindent
set nocompatible
set encoding=utf-8
set number
set relativenumber
syntax on

" Disable automatic comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autocompletition
set wildmode=longest,list,full

" Goyo
map <leader>f :Goyo <cr>

map <Left> <nop>
map <Down> <nop>
map <Up> <nop>
map <Right> <nop>

" Compile lolcode
map <leader>x :w! \| !lci <c-r>%<CR>
