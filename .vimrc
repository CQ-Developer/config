" global
let mapleader = " "
map H ^
map J 5j
map K 5k
map L $
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> gt
nnoremap <C-k> gT
inoremap < <><Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
set rnu
set smartcase
set incsearch
set hlsearch
set ignorecase
set showcmd
set noshowmode
set encoding=utf-8
set updatetime=100
set signcolumn=yes
set hidden
set shortmess+=c
set clipboard+=unnamed,unnamedplus
set wildmenu

" plugin
call plug#begin()
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'lambdalisue/battery.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-highlightedyank'
call plug#end()

" plug seoul256 config
let g:seoul256_background = 235
colo seoul256
set background=dark

" plug nerdtree config
nnoremap <Leader>n :NERDTreeToggle<CR>

" plug vim-easymotion config
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_use_smartsign = 1
map f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
map t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)
map <Leader>s <Plug>(easymotion-s2)
map <Leader>f <Plug>(easymotion-f2)
map <Leader>F <Plug>(easymotion-F2)
map <Leader>t <Plug>(easymotion-t2)
map <Leader>t <Plug>(easymotion-T2)
map / <Plug>(easymotion-sn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>l <Plug>(easymotion-lineforward)

" plug vim-airline-themes config
let g:airline_theme = 'molokai'
let g:airline_minimalist_showmod = 1
let g:airline_molokai_bright = 1

" plug vim-airline config
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_skip_empty_sections = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#nerdtree_statusline = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#battery#enabled = 1
let g:airline#extensions#cursormode#enabled = 1

" plug battery wifi config
set statusline+=%{battery#component()}
let g:battery#update_statusline = 1

" plug highlightedyank config
let g:highlightedyank_highlight_duration = 300
let g:highlightedyank_highlight_in_visual = 0
