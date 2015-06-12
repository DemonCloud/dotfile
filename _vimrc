set nocompatible

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"init
"set windows pos and resize
set lines=50
set columns=118
winpos 88 0

" Encoding setting
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
language messages zh_CN.utf-8

set guifont=ProFontWindows:h9:cANSI
"set guifont=PragmataPro\ for\ Powerline:w5:b:h11:cANSI
"set guifont=Decima\ Nova\ Pro:h11
"set guifont=PragmataPro:b:h10:cANSI
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 10
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ Mono
"set guifont=ProgramPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10

" ## Make its Gvim Like Windows behave ## 
" So you can use 
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set regexpengine=1
" Format 
set ts=2
set shiftwidth=2
set softtabstop=2
set noexpandtab
set nu

" Search and Case
set autoindent
set smartindent
set cindent
set ignorecase
set smartcase
set hlsearch
set wrap
set wildmenu

" No back up files 
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set mousehide
set cursorline

" Advance config
set magic
set lazyredraw
set ttyfast
set hidden
"set autochdir
set autoread
"set showmatch
set laststatus=2
set cmdheight=1

" No surround sound
set noerrorbells
set novisualbell
set t_vb=

" Set Fold config
" set foldmethod=syntax
set foldenable
" set <space> as toggle foldcomment
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
nnoremap <c-space> ?
nnoremap ; :

" Diff GUI Vim with NVim 
" Set No Top Menu and Scroll
if has("gui_running")  
	set guioptions-=e
	set guioptions-=m
	set guioptions-=T
	set guioptions-=L
	set guioptions-=r
	set guioptions-=B
	set guioptions-=0
	set go=
	set guitablabel=
	"set guitablabel=%M\ %t  
else
	set t_Co=256
	set showtabline=1
	set noimd
endif

" setting the tabs like that 
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 

" ========================= Normal Setting End =========================  


" ========================= Vundle Plugin Manager =========================  

filetype off

" Vundle Config Manager
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin("$VIM/vimfiles/bundle")

" # Plugins Beginning #
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tomtom/tlib_vim'
"Plugin 'dbarsam/vim-vimtweak'


" @ Plugin --- [ Themes Custom ]
Plugin 'DemonCloud/J.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'rking/vim-detailed'


" @ Plugin --- [ Style Custom ]
"Plugin 'bling/vim-airline'
"Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'ap/vim-buftabline'
"Plugin 'Lokaltog/vim-powerline'


" @ Plugin --- [ Source Code Cheacker ]
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
"Plugin 'lukaszkorecki/CoffeeTags' "## need Ruby surport


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'
Plugin 'kien/ctrlp.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'marijnh/tern_for_vim'
Plugin 'skeept/Ultisnips-neocomplete-unite'
"Plugin 'fatih/vim-go'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
"Plugin 'c9s/perlomni.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'


" @ Plugin --- [ CWD File Buffer Manager ] 
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'airblade/vim-gitgutter'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'
Plugin 'thinca/vim-quickrun'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'mklabs/grunt.vim'


" @ Plugin --- [ Web Development Tools ]
Plugin 'pangloss/vim-javascript'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'chrisbra/Colorizer'
"Plugin 'skammer/vim-css-color'
Plugin 'ap/vim-css-color'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'othree/html5.vim'
"Plugin 'othree/html5-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/a.vim'

" @ Plugin --- [ ADV Program Language ]
"Plugin 'octol/vim-cpp-enhanced-highlight'


" ---- Plugin List Complete ----

call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on


" Set Color Themes 
set background=dark
"colorscheme gruvbox
" @ COLOR Themes
" If you are not having them. You Search in Google and download them

colorscheme J
"colorscheme jellybeans
"colorscheme hybrid
"colorscheme solarized
"colorscheme gruvbox
"colorscheme darktango
"colorscheme hybrid-light
"colorscheme badwolf
"colorscheme mirodark	
"colorscheme codeschool

"call VimTweak Opacity
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 253)

" ========================= Vundle Plugin Setup End ========================= 



" ========================= Plugin Config Start ========================= 

" @ Linux Install Python PowerLine settings
" @ If you used [airline]  You should Ignor this! 

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" ----------------------------------
" Start Status Line
" Normal Setting for Vim StatuLine
" So you not need Vim powerline or anthor status line plugin
" Formats the statusline

hi f1 guibg=#C0C280 guifg=#080808 ctermbg=230 ctermfg=16 gui=NONE cterm=NONE term=NONE
hi f2 guibg=Black guifg=#C0C280 ctermbg=16 ctermfg=230 gui=NONE cterm=NONE term=NONE

" Observer
"hi f1 guibg=#C0C280 guifg=#080808 gui=NONE 
" Inserter
"hi f1 guibg=#79BE61 guifg=#181818 gui=NONE
" Command
"hi f1 guibg=#981000 guifg=#ffffff gui=NONE

function! StatuslineModeColor()
	let s:Status=mode()	
  if s:Status == 'n'
		hi f1 guibg=#C0C280 guifg=#080808 ctermbg=230 ctermfg=16 gui=NONE cterm=NONE term=NONE
		return 'Observer'
  elseif s:Status == 'i'
		hi f1 guibg=#79BE61 guifg=#181818 ctermbg=83 ctermfg=16 gui=NONE cterm=NONE term=NONE
		return 'Inserter'
	elseif s:Status == 'v'
		hi f1 guibg=#276888 guifg=#FFFFFF ctermbg=32 ctermfg=15 gui=NONE cterm=NONE term=NONE
		return 'Injection'
	else
		hi f1 guibg=#981000 guifg=#FFFFFF ctermbg=52 ctermfg=15 gui=NONE cterm=NONE term=NONE
		return 'Command'
  endif
endfunc

set statusline=%#f1#\ %{StatuslineModeColor()}\ 
set statusline+=%#f2#[%f][%{strlen(&fenc)?&fenc:'none'}]%y%h%m%r
" right align laststatus
set statusline+=\ %=C:%c\ L:%l[%L][%p%%]
set statusline+=%#f1#\ Buff:[%n]                 " Buffer number
"set statusline+=\ [%b][0x%B]\              " ASCII and byte code under cursor

" End Status Line
" -----------------------------

" TagBar Config
let g:tagbar_ctags_bin = "$VIM/vimfiles/bundle/tagbar/ctags.exe"
" for coffeeScript
let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }
"# Please read the TagBar documentation
"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : 'path/to/jsctags'
"\ }


" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
" set Syntastic Cheacker engine 
" example JavaScript use JSHint [ NodeJS ]
let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_java_checkers       = ['java', 'jsp']
"let g:syntastic_c_checkers          = ['c', 'h']
"let g:syntastic_cpp_checkers        = ['cpp']



" NeoCompelete
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

let g:vimfiler_as_default_explorer = 1

" Fix for vim-multiple-cursors plugin with NeoCompelete
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

set completeopt=longest,menu


" tern_node_js onmicomplete with YouCompleteMe
let tern#is_show_argument_hints_enabled= 1
let g:tern_show_argument_hints="on_hold"


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = "<c-x>"
let g:UltiSnipsJumpForwardTrigger  = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<c-e>'
let g:user_emmet_settings = {
\ 'php'     : {
\ 'extends' : 'html',
\ 'filters' : 'c',
\ },
\ 'xml'     : {
\ 'extends' : 'html',
\ },
\ 'haml'    : {
\ 'extends' : 'html',
\ },
\}


" AutoClose Tag Config
" filenames like *.xml, *.html, *.xhtml, ...
" let g:closetag_filenames = "*.xml,*.html,*.xhtml,*.phtml,*.php"
" au FileType xml,html,phtml,php,xhtml,js let b:delimitMate_matchpairs = "(:),[:],{:}"


" JavaScript Lib Syntax
autocmd BufReadPre *.js let b:javascript_lib_use_jquery     = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone   = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude    = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs  = 1
autocmd BufReadPre *.js let b:javascript_lib_use_rect		= 1
autocmd BufReadPre *.js let b:javascript_lib_use_rectjs		= 1
autocmd BufReadPre *.js let b:javascript_lib_use_zepto		= 1


" C++ Syntax HighLight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1


" GitGutter Setting
let g:gitgutter_sign_column_always = 0 
let g:gitgutter_max_signs = 99999 


" c.vim Building Config for C/C++ Vim
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen = 'yes'
"let  g:C_LocalTemplateFile = $VIM.'/vimfiles/c-support/templates/Templates'


" VimFiler Settings
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_tree_opened_icon     = "-"
let g:vimfiler_tree_closed_icon     = "+"
let g:vimfiler_readonly_file_icon = "🔒"
let g:vimfiler_ignore_pattern       = '^\%(.git\|.idea\|.DS_Store\)$'

" CtrlP Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = {
\ 'dir'  : '\v[\/]\.(git|hg|svn)$',
\ 'file' : '\v\.(exe|so|dll|git|svn)$'
\ }


" --------- KeyMapping Config -----------
nnoremap <leader>cp :CtrlP<CR>
nnoremap <leader>cf :CtrlPFunky<CR>

" Start it in browser. Only for Linux Google Chrome
"nnoremap <F8> :silent update<Bar>silent !google-chrome %:p:s?\(.\{-}/\)\{4}?http://localhost/?<CR>
"nnoremap <F9> :silent update<Bar>silent !firefox %:p:s?\(.\{-}/\)\{4}?http://localhost/?<CR>
nnoremap <F5>  :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
nnoremap <F6>  :SyntasticToggleMode <CR>
nnoremap <F7>  :GundoToggle<CR>
nnoremap <F8>	 :silent update<Bar>silent !google-chrome %:p &<CR>
nnoremap <F9>	 :silent update<Bar>silent !firefox %:p &<CR>
nnoremap <F10> :YcmForceCompileAndDiagnostics <CR>
nnoremap <F11> :YcmDebugInfo<CR>
nnoremap <F12> :YcmRestartServer<CR>

" Window VertSplit switcher
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-\> :FZF<CR>

" Format search jump
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <c-i> :call smooth_scroll#down(&scroll, 0, 2)<CR>

"Buftabline Config
nnoremap <A-k> : bnext<CR>
nnoremap <A-j> : bprev<CR>
nnoremap <A-x> : bdelete<CR>
nnoremap <A-w> : bwipeout<CR>

" Check Vim Syntax name Fn
nmap <leader>yi :call <SID>SynStack()<CR>
function! <SID>SynStack()
	echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc
" --------- KeyMapping Config END ----------- 

" ========================= Plugin Config End =========================


" ========================= GUI Setting =========================

map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

" ========================= GUI End =========================
" End vimrc
