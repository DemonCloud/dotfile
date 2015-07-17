" ----------------------------------
" AixLine
" YiJun -- :: Boom!!!
" Start Status Line
" Normal Setting for Vim StatuLine
" So you not need Vim powerline or anthor status line plugin
" Formats the statusline

hi f1 guibg=#591010 guifg=#C0C280 ctermbg=52 ctermfg=230 gui=NONE cterm=NONE term=NONE
hi f1r guibg=#181818 guifg=#591010 ctermbg=234 ctermfg=52 gui=NONE cterm=NONE term=NONE
hi f2 guibg=#080808 guifg=#C0C280 ctermbg=232 ctermfg=230 gui=NONE cterm=NONE term=NONE

hi f3 guibg=#121212 guifg=#888888 ctermbg=233 ctermfg=242 gui=NONE cterm=NONE term=NONE
hi f3r guibg=#080808 guifg=#121212 ctermbg=232 ctermfg=233 gui=NONE cterm=NONE term=NONE

hi f4 guibg=#181818 guifg=#af0000 ctermbg=234 ctermfg=124 gui=NONE cterm=NONE term=NONE
hi f4r guibg=#121212 guifg=#181818 ctermbg=233 ctermfg=234 gui=NONE cterm=NONE term=NONE

hi f5g guibg=#000000 guifg=#181818 ctermbg=16 ctermfg=234 gui=NONE cterm=NONE term=NONE

" Observer
"hi f1 guibg=#C0C280 guifg=#080808 gui=NONE 
" Inserter
"hi f1 guibg=#79BE61 guifg=#181818 gui=NONE
" Command
"hi f1 guibg=#981000 guifg=#ffffff gui=NONE
let g:last_mode = 'n'
function! StatuslineModeColor()
	let l:Status=mode()	

	if l:Status !=# g:last_mode
		let g:last_mode = l:Status

	  if l:Status == 'n'
			hi f1 guibg=#591010 guifg=#C0C280 ctermbg=52 ctermfg=230 
			hi f1r guibg=#181818 guifg=#591010 ctermbg=234 ctermfg=52
	  elseif l:Status == 'i'
			hi f1 guibg=#79BE61 guifg=#181818 ctermbg=83 ctermfg=16 
			hi f1r guibg=#181818 guifg=#79BE61 ctermbg=234 ctermfg=83
		elseif l:Status == 'v'
			hi f1 guibg=#276888 guifg=#FFFFFF ctermbg=32 ctermfg=15
			hi f1r guibg=#181818 guifg=#276888 ctermbg=234 ctermfg=32
		else
			hi f1 guibg=#C0C280 guifg=#181818 ctermbg=230 ctermfg=16 
			hi f1r guibg=#181818 guifg=#C0C280 ctermbg=234 ctermfg=230
	  endif
	endif

	if l:Status ==# "n"
		return "NORMAL"
	elseif l:Status ==# "i"
		return "INSERT"
	elseif l:Status ==# "c"
		return "COMMAND"
	elseif l:Status ==# "R"
		return "REPLACE"
	elseif l:Status ==# "t"
		return "TERMINAL"
	elseif l:Status ==# "v"
		return "VISUAL"
	elseif l:Status ==# "V"
		return "V·LINE"
	elseif l:Status ==# "s"
		return "SELECT"
	elseif l:Status ==# "S"
		return "SELEALL"
	elseif l:Status ==# ""
		return "V·BLOCK"
	else
		return l:Status
	endif
endfunc

set statusline=%#f1#\ %{StatuslineModeColor()}%#f1r#◣\ 
"⮀⮂ ◣  ◢%
set statusline+=\ %#f4#%f\ %#f4r#◣\ %#f3#\ %y%h%m%r\ %#f3r#◣\ %#f2#\ %{fugitive#statusline()}\  
" right align laststatus
set statusline+=%=%#f2#%#f3r#\ ◢%#f3#\ [%b][0x%B]\ 
set statusline+=%#f4r#\ ◢%#f4#\ ⭡\ %l/%L\ 
set statusline+=%#f1r#\ ◢%#f1#\ ✹\ BUFF:%n\ 

" End Status Line
" -----------------------------
