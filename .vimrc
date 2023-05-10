" 显示行号
set number

" 显示相对行号
set relativenumber

" 标记光标所在行
set cursorline

" 标记光标所在列
" set cursorcolumn

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
set directory="/home/chen/.vim/swap//"

" 禁用swap文件
" set noswapfile

" 启用持久性撤销
set undofile

" 设置持久性文件的保存位置
if !isdirectory("/home/chen/.vim/undodir")
    call mkdir("/home/chen/.vim/undodir", "p")
endif
set undodir="/home/chen/.vim/undodir"

" 加载所有插件
packloadall

" 为所有插件加载帮助文档
silent! helptags ALL

" 映射切换窗口的快捷键
" noremap <c-h> <c-w><c-h>
" noremap <c-j> <c-w><c-j>
" noremap <c-k> <c-w><c-k>
" noremap <c-l> <c-w><c-l>

" 关闭缓冲区而不关闭窗口
" command! Bd :bp | :sp |:bn | :bd

" 设置代码折叠规则
" set fdm=indent
set foldmethod=indent

" 使用4列标记折叠状态
" set fdc=4
set foldcolumn=0

" 在增强模式下产生一个自动补全的文件名菜单
" set wmun
set wildmenu

" 补全允许的最长字符串
" wildmode wim
set wildmode=list:longest,full

" 在启动NERDTree时始终显示书签
" let NERDTreeShowBookmarks = 1
" 在编辑时令NERDTree窗口保持打开
" autocmd VimEnter * NERDTree
" 当NERDTree成为最后一个窗口时将其关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:ENRDTree") && b:ENRDTree.isTabTree()) | q | endif
" 防止NERDTree取代Netrw
" let NERDTreeHijackNetrw = 0
let loaded_nerd_tree = 1

