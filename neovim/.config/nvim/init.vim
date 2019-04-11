
unlet! skip_defaults_vim

let mapleader=" "

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'thaerkh/vim-workspace'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()

" Basics
set nocompatible
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set smarttab autoindent smartindent cindent
set encoding=utf-8
set number
set relativenumber
" Enable clipboard support
set clipboard=unnamedplus
" Disable search highlighting
set nohlsearch
" Enable mouse support in Normal Visual Insert Command-line modes
set mouse=a
" No copy when changing
nnoremap c "_c
" Enable loading plugin files for filetype detection
filetype plugin on
syntax on

" Disable automatic comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autocompletition
set wildmode=longest,list,full

" Goyo
map <leader>f :Goyo <cr> \| set linebreak<CR>

" NerdTree
map <leader>t :NERDTreeToggle<CR>

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab navigation
map <leader>h :tabp<CR>
map <leader>l :tabn<CR>

" Compiler and preview
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>

map <Left> <nop>
map <Down> <nop>
map <Up> <nop>
map <Right> <nop>
