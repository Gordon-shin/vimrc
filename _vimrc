syntax on
"=================================================================================================== 
" vimplug                                                                                               map S :w<CR>
"=================================================================================================== map s <nop>
"
call plug#begin('D:\software\Vim\vim81\plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
call plug#end()
color snazzy
map <C-n> :NERDTreeToggle<CR>
"let g:SnazzyTransparent = 1 "snazzy 透明


"===================================================================================================                 
"去掉选项单
"===================================================================================================     
"                                                                                                                    



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
map Q :q<CR>
map S :w<CR>
map . :bn<CR>
map , :bp<CR>
map si :set splitright<CR>:vsplit<CR>

set foldmethod=indent
set tabstop=2
set magic
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
