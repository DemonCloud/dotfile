" ###  AixLine  ###
"
" YiJun -- :: Boom!!!
" Start Status Line
" Normal Setting for Vim StatuLine
" So you not need Vim powerline or anthor status line plugin
" Formats the statusline

" ===================== UTIL ===================
" Aix Line Call Prototype
function! s:AixLineSet(prop,gfg,gbg,tfg,tbg,stl)
	let hstr='hi ' . a:prop . ' guifg=' . a:gfg . ' guibg=' . a:gbg
	if strlen(a:tfg)
		let hstr .=' ctermfg=' . a:tfg . ' ctermbg=' . a:tbg
		let hstr .=' gui=' . a:stl . ' cterm=' . a:stl . ' term=' . a:stl
	endif

	exec hstr
endfunction

function! s:AixLineLink(prop,linker)
	let lstr='hi link '. a:prop . ' ' . a:linker
	exec lstr
endfunction

" ===================== COLOR ===================
" --- StatusLine Left ---
" Normal Status                  #1-block
call s:AixLineSet('aixLeft1'       , '#C0C280' , '#5F0000' , '143' , '52'  , 'NONE')
call s:AixLineSet('aixLeft1Larrow' , '#5F0000' , '#121212' , '52'  , '233' , 'NONE')

" Git Status Require [#fugitive] #2-block
call s:AixLineSet('aixLeft2'       , '#C0C280' , '#121212' , '143' , '233' , 'NONE')
call s:AixLineSet('aixLeft2Larrow' , '#121212' , '#181818' , '233' , '234' , 'NONE')

" File Path Status               #3-block
call s:AixLineSet('aixLeft3'       , '#AF0000' , '#181818' , '124' , '234' , 'NONE')
call s:AixLineSet('aixLeft3Larrow' , '#181818' , '#262626' , '234' , '235' , 'NONE')

" File Type && Chmod - Chown     #4-block
call s:AixLineSet('aixLeft4'       , '#8A8A8A' , '#262626' , '245' , '235' , 'NONE')
call s:AixLineSet('aixLeft4Larrow' , '#262626' , '#080808' , '235' , '232' , 'NONE')

" --- StatusLine Middle ---
" Emptye Middle vertical         #empty
call s:AixLineSet('aixMiddle' , '#080808' , '#080808' , '232' , '232' , 'NONE')

" --- StatusLine Right ---
" ANSI C code Status             #4-block
call s:AixLineLink('aixRight4Rarrow' , 'aixLeft4Larrow')
call s:AixLineLink('aixRight4'       , 'aixLeft4')

" Line / Number Counter Status   #3-block
call s:AixLineLink('aixRight3Rarrow' , 'aixLeft3Larrow')
call s:AixLineLink('aixRight3'       , 'aixLeft3')

" Buff type Status               #1-block
call s:AixLineSet('aixRight1Rarrow' , '#5F0000'   , '#181818' , '52' , '234' , 'NONE')
call s:AixLineLink('aixRight1'      , 'aixLeft1')


" ===================== Function ===================
" Observer
let g:last_mode = 'n'
let g:Flags="NORMAL"
function! AixStatuslineMode()
	let l:Status=mode()

	if l:Status !=# g:last_mode
		let g:last_mode = l:Status

		" Normal Model
		if l:Status ==# 'n'
			call s:AixLineSet('aixLeft1'        , '#C0C280' , '#5F0000' , '143' , '52'  , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#5F0000' , '#121212' , '52'  , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#5F0000' , '#181818' , '52'  , '234' , 'NONE')
			let g:Flags="NORMAL"

			" Insert Model
		elseif l:Status ==# 'i'
			call s:AixLineSet('aixLeft1'        , '#181818' , '#79BE61' , '232' , '83'  , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#79BE61' , '#121212' , '83'  , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#79BE61' , '#181818' , '83'  , '234' , 'NONE')
			let g:Flags="INSERT"

			" Visual Model
		elseif l:Status == 'v'
			call s:AixLineSet('aixLeft1'        , '#FFFFFF' , '#276888' , '15' , '32'  , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#276888' , '#121212' , '32' , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#276888' , '#181818' , '32' , '234' , 'NONE')

			if l:Status ==# "v"
				let g:Flags="VISUAL"
			elseif l:Status ==# "V"
				let g:Flags="V·LINE"
			endif

			" Command Model
		elseif l:Status == 'c'
			call s:AixLineSet('aixLeft1'        , '#BCBCBC' , '#000000' , '250' , '0'   , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#000000' , '#121212' , '0'   , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#000000' , '#181818' , '0'   , '234' , 'NONE')
			let g:Flags="COMMAND"

			" Command Model
		elseif l:Status == 't'
			call s:AixLineSet('aixLeft1'        , '#BCBCBC' , '#000000' , '250' , '0'   , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#000000' , '#121212' , '0'   , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#000000' , '#181818' , '0'   , '234' , 'NONE')
			let g:Flags="SHELL"

			" Replace Model
		elseif l:Status == 'R'
			call s:AixLineSet('aixLeft1'        , '#AF0000' , '#DF5F00' , '124' , '166' , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#DF5F00' , '#121212' , '166' , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#DF5F00' , '#181818' , '166' , '234' , 'NONE')
			let g:Flags="REPLACE"

		elseif l:Status == "s"
			call s:AixLineSet('aixLeft1'        , '#FFFFFF' , '#005FAF' , '15' , '25'  , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#005FAF' , '#121212' , '25' , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#005FAF' , '#181818' , '25' , '234' , 'NONE')
			if l:Status ==# "s"
				let g:Flags="SELECT"
			elseif l:Status ==# "S"
				let g:Flags="SELEALL"
			endif

		else
			call s:AixLineSet('aixLeft1'        , '#181818' , '#C0C280' , '232' , '143' , 'NONE')
			call s:AixLineSet('aixLeft1Larrow'  , '#C0C280' , '#121212' , '143' , '233' , 'NONE')
			call s:AixLineSet('aixRight1Rarrow' , '#C0C280' , '#181818' , '143' , '234' , 'NONE')
			if l:Status ==# ""
				let g:Flags="V·BLOCK"
			else
				let g:Flags=l:Status
			endif
		endif
	endif

	return g:Flags
endfunction

" Git Status Prototype [ # require fugitive ]
function! GitStatusChecker()
	let s:gitstatus = fugitive#statusline()

	if(strlen(s:gitstatus))
		return "Git "
	endif
	return "" 
endfunction


" Use Their Characters
"⮀⮂ ◣  ◢%
" ================= Building Aix StatusLine ===============


" ---- Format Aix StatusLine Left ----
" #1-Block [ Observer ]
" [ Normal ] + Arrow >
set statusline=%#aixLeft1#\ %{AixStatuslineMode()}%#aixLeft1Larrow#◣\ \ 

" #2-Block [ GitChecker ]
" [ #Fugitive ] || Empty
set statusline+=%#aixLeft2#%{GitStatusChecker()}%#aixLeft2Larrow#◣\ 

" #3-Block [ File Path ]
" [ Absolute Current Path ]
set statusline+=%#aixLeft3#\ %f\ %#aixLeft3Larrow#◣\ 

" #4-Block [ File Type ]
" [ File Type format ] #require [ vim-devicons ]
set statusline+=%#aixLeft4#\ %{WebDevIconsGetFileTypeSymbol()}\ %h%m%r%#aixLeft4Larrow#◣\ \ 

set statusline+=%#aixMiddle#\ ◣
" ---- Format Aix StatusLine Empty ----
set statusline+=%=%#aixMiddle#\ ◢


" ---- Format Aix StatusLine Right ----
" #4-Block [ Char Code ]
" [ ANSI C char code ]
set statusline+=%#aixRight4Rarrow#\ \ ◢%#aixRight4#\ [%b][0x%B]\ 

" #3-Block [ Line Number ]
" [ Line Counter && Number ]
set statusline+=%#aixRight3Rarrow#\ ◢%#aixRight3#\ ⭡\ %l/%L\ 

set statusline+=%#aixRight1Rarrow#\ ◢%#aixRight1#✹\ BUFF:%n\ 

" ================= Building End ===============
