
if(exists('g:GuiLoaded'))
	GuiPopupmenu 0
	GuiTabline 0
	GuiLinespace 2
	" Open	Windows size
	set mouse=a
	set lines=65 
	set columns=158
	set guioptions=

	set guioptions+=a
	 GuiFont! Hack:h10:l
    " GuiFont! Microsoft\ YaHei\ Mono:h10:l

    " Use shift+insert for paste inside neovim-qt,
    " see https://github.com/equalsraf/neovim-qt/issues/327#issuecomment-325660764
    inoremap <silent>  <S-Insert>  <C-R>+
    cnoremap <silent> <S-Insert> <C-R>+

    " For Windows, Ctrl-6 does not work. So we use this mapping instead.
    nnoremap <silent> <C-6> <C-^>
    
    endif
