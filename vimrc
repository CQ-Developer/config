" 显示行号
set number
" 显示相对行号
set relativenumber
" 标记光标所在行
set cursorline
" 标记光标所在列
set cursorcolumn
" 启用根据文件类型自动缩进
filetype plugin indent on
" 启用换行时自动缩进
set autoindent
" 自动缩进空格数
set shiftwidth=4
" 将Tab替换为空格
set expandtab
" tab阔度4个字符
set tabstop=4
" 修改退格键Backspace的行为
set backspace=2
" 支持语法高亮显示
syntax on
" 修改配色
colorscheme murphy
" 启用swap文件
set swapfile
" 修改swap文件的保存位置
set directory="/home/chen/.vim/swap//"
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
set foldmethod=indent
" 使用4列标记折叠状态
set foldcolumn=0
" 在增强模式下产生一个自动补全的文件名菜单
set wildmenu
" 补全允许的最长字符串
set wildmode=list:longest,full
" 高亮显示搜索结果
set hlsearch
" 在未完整输入时直接跳到搜索结果
set incsearch
" 复制到系统寄存器(*,+)
set clipboard=unnamed,unnamedplus
