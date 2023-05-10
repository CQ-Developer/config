" 显示行号
set number

" 显示相对行号
set relativenumber

" 光标十字
set cursorline
set cursorcolumn

" 支持语法高亮显示
syntax on

" 启用根据文件类型自动缩进
filetype plugin indent on

" 启用换行时自动缩进
set autoindent

" 自动缩进空格数
set shiftwidth=4

" 将Tab替换为空格
set expandtab

" 要计算的空格数
set tabstop=4

" 修改退格键Backspace的行为
set backspace=2

" 修改配色
colorscheme murphy

" 修改swap文件的保存位置
set directory="/c/Users/QCHEN71/.vim/swap//"

" 禁用swap文件
" set noswapfile

" 启用持久性撤销
set undofile

" 设置持久性文件的保存位置
if !isdirectory("/c/Users/QCHEN71/.vim/undodir")
    call mkdir("/c/Users/QCHEN71/.vim/undodir", "p")
endif
set undodir="/c/Users/QCHEN71/.vim/undodir"
