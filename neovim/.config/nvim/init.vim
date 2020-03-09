
unlet! skip_defaults_vim

let mapleader=" "

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
        autocmd VimEnter * PlugInstall
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
Plug 'rust-lang/rust.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'ap/vim-css-color'
call plug#end()

" Basics
set nocompatible
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set smarttab autoindent smartindent cindent
set encoding=utf-8
set number relativenumber

" Enable clipboard support
set clipboard+=unnamedplus

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

" Disable automatic comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Autocompletition
set wildmode=longest,list,full

""
"" Basic keymaps
""

map <leader>q :q<CR>
map <leader>wq :wq<CR>
map <leader>f :FZF<CR>

" Spellcheck
map <leader>oi :setlocal spell spelllang=it<CR>
map <leader>oe :setlocal spell spelllang=en<CR>
map <leader>oo :setlocal spell!<CR>

" Goyo
map <leader>g :Goyo \| set linebreak<CR>

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
autocmd BufWritePost *sxhkdrc !pkill -USR1 -x sxhkd

"""
""" Flutter
"""

autocmd FileType dart nnoremap <leader>fa :FlutterRun<cr>
autocmd FileType dart nnoremap <leader>fr :FlutterHotReload<cr>
autocmd FileType dart nnoremap <leader>fR :FlutterHotRestart<cr>
autocmd FileType dart nnoremap <leader>fq :FlutterQuit<cr>

"""
""" Latex
"""

" Changes plaintex to tex for empty files
let g:tex_flavor='latex'

" Inserts template in new files
autocmd BufNewFile *.tex execute 'r ~/latex/template.tex' | 0 | delete
