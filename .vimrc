
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

let mapleader=" "

call plug#begin('~/.vim/plugged')
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

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter> 
