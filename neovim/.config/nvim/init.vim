
scriptencoding utf-8

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
set scrolloff=15

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

""   ____ ___   ____
""  / ___/ _ \ / ___|
"" | |  | | | | |
"" | |__| |_| | |___
""  \____\___/ \____|
"" 

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

augroup latex
    autocmd! FileType tex setlocal tabstop=2 shiftwidth=2
augroup END

""   ____  _____   _____
""  / ___|/ _ \ \ / / _ \
"" | |  _| | | \ V / | | |
"" | |_| | |_| || || |_| |
""  \____|\___/ |_| \___/
"" 

let g:goyo_width = 70

nnoremap <silent> <leader>cc :Goyo<CR>

augroup goyogroup
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
augroup END

""  _____ __________
"" |  ___|__  /  ___|
"" | |_    / /| |_
"" |  _|  / /_|  _|
"" |_|   /____|_|
""

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

""  ____   _    _   _ ____   ___   ____
"" |  _ \ / \  | \ | |  _ \ / _ \ / ___|
"" | |_) / _ \ |  \| | | | | | | | |
"" |  __/ ___ \| |\  | |_| | |_| | |___
"" |_| /_/   \_\_| \_|____/ \___/ \____|
""

let g:pandoc#spell#default_langs = ['it', 'en']

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

