set number
set relativenumber
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
colorscheme default
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[2 q"
endif
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>