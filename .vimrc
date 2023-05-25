call plug#begin()
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'flazz/vim-colorschemes'
call plug#end()

let mapleader = "\<space>"
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[2 q"
endif

set termguicolors
set number
set relativenumber
set laststatus=2
set showcmd
set cursorline
set cursorcolumn
set wildmenu
set wildmode=list:longest,full
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=2
set foldcolumn=0
set foldmethod=manual
set hlsearch
set incsearch
set clipboard=unnamed,unnamedplus
set swapfile
set directory="/home/chen/.vim/swap//"
set undodir="/home/chen/.vim/undodir"
syntax on
filetype on
filetype plugin indent on
silent! helptags ALL
colorscheme evening

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
noremap <leader>n :Lex<cr>:vert res 75<cr>
noremap <leader>w :w<cr>
noremap <leader>p :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
noremap <leader>m :CtrlPMRU<cr>
tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <><esc>i