
if(exists('g:GuiLoaded'))
	GuiPopupmenu 0
	"GuiTabline 0
	" Open	Windows size
	set lines=65 
	set columns=158
	set guioptions=
	set guioptions+=a
	autocmd GUIEnter * set visualbell t_vb=
	autocmd BufRead,TabEnter * let &titlestring=expand("%:p")
else
	" autocmd BufRead,TabEnter * set mouse=
	" This is console Vim.
	if exists("+lines")
		set lines=50
	endif
	if exists("+columns")
		set columns=100
	endif
endif
