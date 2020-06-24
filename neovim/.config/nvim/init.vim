
let mapleader = " "
syntax on

set number relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.local/share/vim
set undofile
set incsearch
set termguicolors
set scrolloff=8

set path+=**
set wildmenu
set wildmode=longest,list,full
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**

set updatetime=50

set clipboard+=unnamedplus
nnoremap c "_c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

if executable('rg')
    let g:rg_derive_root='true'
endif

if ! filereadable(glob('~/.config/nvim/autoload/plug.vim'))
    echo 'Downloading junegunn/vim-plug to manage plugins...'
    !mkdir -p ~/.config/nvim/autoload/
    !curl -S 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' > ~/.config/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'mzlogin/vim-markdown-toc'
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

noremap <leader>c :write <bar> !compiler %<CR>
noremap <leader>p :!opout %<CR><CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>e :Vexplore <bar> :vertical resize 30<CR>
nnoremap <leader>f :Files<CR>

nnoremap <leader>jd <Plug>(coc-definition)
nnoremap <leader>ji <Plug>(coc-implementation)
nnoremap <leader>jr <Plug>(coc-references)
nnoremap <leader>gs :Git<CR>

map <Left>  <nop>
map <Down>  <nop>
map <Up>    <nop>
map <Right> <nop>

autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal tabstop=4 noexpandtab softtabstop=0 shiftwidth=4

let g:tex_flavor='latex'
autocmd BufNewFile *.tex execute "r $HOME/.config/latex/template.tex" | 0 | delete

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

nnoremap <leader>tc :call ToggleConcealLevel()<CR>

