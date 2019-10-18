
unlet! skip_defaults_vim

let mapleader=" "

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'thaerkh/vim-workspace'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'chrisbra/csv.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'tmhedberg/SimpylFold'
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
filetype plugin indent on
syntax on
" Fuzzy find
set path+=**
" .viminfo path
set viminfo+=n~/history/viminfo

" Reload config
autocmd! bufwritepost init.vim source %
command! ReloadConfig :so /home/andrea/.config/nvim/init.vim

" ctags (^] jump to tag, ^t prev tag)
command! MakeTags !ctags -R .

" Disable automatic comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autocompletition
set wildmode=longest,list,full

" Spellcheck
map <leader>oi :setlocal spell spelllang=it<CR>
map <leader>oe :setlocal spell spelllang=en<CR>
map <leader>oo :setlocal spell!<CR>

" Goyo
map <leader>f :Goyo \| set linebreak<CR>

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

" <++>
nmap <leader><leader> /<++><Enter>c4l

" Haskell
autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2

" sxhkd
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

"""
""" Latex
"""

" Changes plaintex to tex for empty files
let g:tex_flavor='latex'

" Inserts template in new files
autocmd BufNewFile *.tex execute 'r ~/latex/template.tex' | 0 | delete

" Equations
autocmd Filetype tex imap ,ee \begin{equation}<enter>\end{equation}<enter><enter><++><esc>2kO
autocmd Filetype tex imap ,ea \begin{align*}<enter>\end{align*}<enter><enter><++><esc>2kO

" Derivatives
autocmd Filetype tex imap ,dd \frac{d}{d}<++><esc>4hi
autocmd Filetype tex imap ,dp \frac{\partial}{\partial }<++><esc>4hi

" Integrals
autocmd Filetype tex imap ,ii \int
autocmd Filetype tex imap ,id \int_{}^{<++>}<++>d<++><esc>16hi
autocmd Filetype tex imap ,ip \int\limits_{}<++>d<++><esc>9hi
autocmd Filetype tex imap ,icp \oint\limits_{}<++>d<++><esc>9hi
autocmd Filetype tex imap ,is \iint\limits_{}<++>d<++><esc>9hi
autocmd Filetype tex imap ,ics \oiint\limits_{}<++>d<++><esc>9hi
autocmd Filetype tex imap ,iv \iiint\limits_{}<++>d<++><esc>9hi

" Vector calculus
autocmd Filetype tex imap ,vv \vec{}<++><esc>4hi
autocmd Filetype tex imap ,vc \nabla\times
autocmd Filetype tex imap ,vd \nabla\cdot
autocmd Filetype tex imap ,vg \nabla

" Funtions
autocmd Filetype tex imap ,ff \colon<++>\to<++><esc>16hi
autocmd Filetype tex imap ,fF \colon&<++>\to<++>\\<enter>&<++>\mapsto<++><esc>k15hi

" Sets
autocmd Filetype tex imap ,sr \mathbb{R}
autocmd Filetype tex imap ,sc \mathbb{C}
autocmd Filetype tex imap ,sn \mathbb{N}
autocmd Filetype tex imap ,sz \mathbb{Z}

