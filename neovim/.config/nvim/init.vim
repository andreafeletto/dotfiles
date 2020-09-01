
let mapleader = ' '
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
set nofoldenable
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
highlight ColorColumn ctermbg=0

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

nnoremap <leader>gs :Git<CR>

autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal tabstop=4 noexpandtab softtabstop=0 shiftwidth=4
autocmd FileType pandoc setlocal nospell

""     _    _     _____
""    / \  | |   | ____|
""   / _ \ | |   |  _|
""  / ___ \| |___| |___
"" /_/   \_\_____|_____|
"" 

let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8'],
\   'sh': ['shfmt'],
\   'c': ['clang-format']
\}

let g:ale_c_clangformat_options = '-style=GNU'

""   ____ ___  _   _  ____ _____    _    _
""  / ___/ _ \| \ | |/ ___| ____|  / \  | |
"" | |  | | | |  \| | |   |  _|   / _ \ | |
"" | |__| |_| | |\  | |___| |___ / ___ \| |___
""  \____\___/|_| \_|\____|_____/_/   \_\_____|
"" 

function! ToggleConcealLevel()
    if &conceallevel == 0
        setlocal conceallevel=2
    else
        setlocal conceallevel=0
    endif
endfunction

nnoremap <leader>tc :call ToggleConcealLevel()<CR>

