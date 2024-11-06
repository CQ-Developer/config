" global
let mapleader = " "
let &t_EI = "\<Esc>[2 q"
let &t_SI = "\<Esc>[6 q"
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
set showcmd
set noshowmode
set encoding=utf-8
set updatetime=100
set signcolumn=yes
set hidden
set shortmess+=c

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
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

" plug seoul256 config
let g:seoul256_background = 235
colo seoul256
set background=dark

" plug nerdtree config
nnoremap <Leader>n :NERDTree<CR>
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" plug vim-easymotion config
let g:EasyMotion_startofline = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_use_smartsign = 1
map s <Plug>(easymotion-s2)
map f <Plug>(easymotion-f2)
map F <Plug>(easymotion-F2)
map <Leader>f <Plug>(easymotion-fn)
map <Leader>F <Plug>(easymotion-Fn)
map t <Plug>(easymotion-t2)
map T <Plug>(easymotion-T2)
map <Leader>t <Plug>(easymotion-tn)
map <Leader>t <Plug>(easymotion-Tn)
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
let g:battery#update_tabline = 1

" plug coc.vim config
let g:coc_global_extensions = ['coc-vimlsp']
let g:markdown_fenced_languages = ['vim', 'help']
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <Leader>h :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
