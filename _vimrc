let mapleader=" "
syntax on
"=================================================================================================== 
" vimplug                                                                                               map S :w<CR>
"=================================================================================================== map s <nop>
"
call plug#begin('D:\software\Vim\vim81\plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Valloric/YouCompleteMe'
"主题设置
"nerdtree
Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'
" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-python/python-syntax', { 'for' :['python', 'vim-plug'] }

" Markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'vimwiki/vimwiki'

" For general writing
Plug 'reedes/vim-wordy'
Plug 'ron89/thesaurus_query.vim'

map tt :NERDTreeToggle<CR>
"let g:SnazzyTransparent = 1 "snazzy 透明

call plug#end()

color snazzy
"===================================================================================================                 
"去掉选项单
"ctrl+o 回到上次浏览的地方
"ctrl+i 同上
"===================================================================================================     
"                                                                                                                    
" ===
" === coc
" ===
" fix the most annoying bug that coc has
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
"let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint']
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"



"" Useful commands
"nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap <leader>rn <Plug>(coc-rename)


let NERDTreeMapOpenSplit='\hh'

if (has("gui_running"))
    set lines=55
    set columns=120
    set guioptions=
    set clipboard+=unnamed
    set guitablabel=%t\ %M
    language messages en
    winpos 700 75
    autocmd GUIEnter * set visualbell t_vb=
    autocmd BufRead,TabEnter * let &titlestring=expand("%:p")
    if (has("win32"))
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    endif
    if argc() == 1
        silent execute '!start gvim --servername vimer --remote-tab-silent "'.argv(0).'"'
        call remote_foreground("vimer")
        silent execute "q"
    endif
else
    autocmd BufRead,TabEnter * set mouse=
endif
"===================================================================================================                  
" 普通选项                                                                                                          


"===================================================================================================                  
noremap h i
noremap j h
noremap k j
noremap i k

map Q :q<CR>

map S :w<CR>
map . :bn<CR>
map , :bp<CR>
map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map sw :set nosplitbelow<CR>:split<CR>
map ss :set splitbelow<CR>:split<CR>

map <LEADER><CR> :nohlsearch<CR> 
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
map <LEADER>l <C-w>l
map = $
map - 0


set foldmethod=indent
set tabstop=2
set magic
set scrolloff=5  "让屏幕上下至少保有5行
set number
set relativenumber
set cursorline
set wrap
set showcmd
set t_Co=256
set wildmenu
set autochdir
set laststatus=2
set nocompatible
set showtabline=1
set nostartofline
set ambiwidth=double
set visualbell t_vb=
set virtualedit=block
set hlsearch incsearch
filetype plugin indent on
set nrformats=octal,hex,alpha
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~
set history=1000 undolevels=1000
set fileformat=unix fileformats=unix,dos
set showmatch matchpairs=(:),[:],{:},<:>
set nolist listchars=tab:--,trail:-,nbsp:*
set nofoldenable foldmethod=indent foldtext=
set complete=.,w,b,u,t,i,d completeopt=longest,menu
set encoding=utf-8 termencoding=utf-8 fileencoding=utf-8
set nowritebackup noswapfile autoread writeany nolazyredraw
set tabstop=4 shiftwidth=4 softtabstop=4 smarttab expandtab
set guifont=Consolas:h10:cANSI guifontwide=NSimSun:h10:cANSI
set fileencodings=ucs-bom,utf-8,chinese,gb18030,big5,euc-jp,euc-kr,latin1
set autoindent smartindent copyindent cindent cinoptions=:0,g0,t0,i0,N-s,E-s,(s,W4,m1,j1
