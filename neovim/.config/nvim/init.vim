
unlet! skip_defaults_vim

" Plugins {{{

if ! filereadable(glob('~/.config/nvim/autoload/plug.vim'))
	echo 'Downloading junegunn/vim-plug to manage plugins...'
	!mkdir -p ~/.config/nvim/autoload/
	!curl -S 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > ~/.config/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'mzlogin/vim-markdown-toc'
call plug#end()

"}}}

" File Find {{{

set path+=**
set wildmenu
set wildmode=longest,list,full
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**
set hidden

"}}}

" Folding {{{

set foldenable
set foldmethod=syntax

"}}}

" UI {{{

let mapleader=","
set nocompatible
set encoding=utf-8
set number relativenumber

filetype plugin indent on
syntax on

set clipboard+=unnamedplus
nnoremap c "_c

set nohlsearch

set modeline
set modelines=5

" }}}

" Indenting and Wrapping {{{

set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set smarttab autoindent smartindent cindent
set textwidth=80

" }}}

" viminfo {{{

if !has('nvim')
    set viminfo+=n~/history/viminfo
endif

" }}}

""
"" Basic keymaps
""

" Spellcheck
map <leader>oi :setlocal spell spelllang=it<CR>
map <leader>oe :setlocal spell spelllang=en<CR>
map <leader>oo :setlocal spell!<CR>

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Compiler and preview
map <leader>c :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>

map <Left> <nop>
map <Down> <nop>
map <Up> <nop>
map <Right> <nop>

" Haskell
autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2

" sxhkd
autocmd BufWritePost */sxhkdrc !pkill -USR1 -x sxhkd

" shell script
autocmd FileType sh setlocal tabstop=4 noexpandtab softtabstop=0 shiftwidth=4

" Changes plaintex to tex for empty files
let g:tex_flavor='latex'

" Inserts template in new files
autocmd BufNewFile *.tex execute "r $HOME/.config/latex/template.tex" | 0 | delete

" vim:foldmethod=marker:foldlevel=0

