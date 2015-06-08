" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
" 
" 
" 
"                         YiJun Linux GVim dotfile
"  
"                                2015.1.18 
"
"                 ★★★ I Love You <★Meredith★> Forever ★★★
"
"
"
" ========================= Normal Setting Start =========================  
set nocompatible

"init
"set windows pos and resize
set lines=48
set columns=118
winpos 68 0

" ## Make its Gvim Like Windows behave ## 
" So you can use 
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
source $VIMRUNTIME/mswin.vim
behave mswin

set regexpengine=1
" Format 
set ts=2 "4
set shiftwidth=2 "4
set softtabstop=2 "4
set noexpandtab
set nu
set statusline

" Encoding setting
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
set encoding=utf-8
set guifont=ProfontWindows\ 9
"set guifont=IBM\ 3270\ Narrow\ Medium\ 10 
"set guifont=PragmataPro\ for\ Powerline\ Bold\ 10
"set guifont=Decima\ Nova\ Pro
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Bold\ 8
"set guifont=Anonymous\ Pro\ for\ Powerline\ Bold\ 10
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ Mono
"set guifont=PragmataPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Bold\ 10

" Search and Case
set autoindent
set smartindent
set cindent
set autoread
set ignorecase
set hlsearch
set wrap
set wildmenu

" No back up files 
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set ruler
set cursorline
set laststatus=2
set guioptions-=e
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=B
set guioptions-=0
set go=

" figure config
set mousehide

" setting the tabs like that 
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 

" ========================= Normal Setting End =========================  


" ========================= Vundle Plugin Manager =========================  

filetype off

" Vundle Config Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" # Plugins Beginning #
" @ Plugin --- [ Base Require Lib ]
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tomtom/tlib_vim'

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J.vim'
"Plugin 'morhetz/gruvbox'

" @ Plugin --- [ Style Custom ]

Plugin 'Lokaltog/vim-distinguished'
"Plugin 'bling/vim-airline'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'itchyny/lightline.vim'
Plugin 'ap/vim-buftabline'
Plugin 'terryma/vim-smooth-scroll'


" @ Plugin --- [ Source Code Cheacker ]
Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'fatih/vim-go'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'c9s/perlomni.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'


" @ Plugin --- [ CWD File Buffer Manager ] 
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/limelight.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'thinca/vim-quickrun'
Plugin 'dyng/ctrlsf.vim'
Plugin 'mklabs/grunt.vim'


" @ Plugin --- [ Web Development Tools ]
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'

" @ Plugin --- [ ADV Program Language ]
Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" ---- Plugin List Complete ----

call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on


" Set Color Themes 
set background=dark
let base16colorspace=256

" @ COLOR Themes
" If you are not having them. You Search in Google and download them

colorscheme J
"colorscheme monochrome
"colorscheme seoul256
"colorscheme distinguished
"colorscheme jellybeans
"colorscheme hybrid
"colorscheme solarized
"colorscheme gruvbox
"colorscheme darktango
"colorscheme hybrid-light
"colorscheme badwolf
"colorscheme mirodark	
"colorscheme codeschool

" ========================= Vundle Plugin Setup End ========================= 



" ========================= Plugin Config Start ========================= 

" @ Linux Install Python PowerLine settings
" @ If you used [#airline#]  You should Ignor this! 

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set rtp+=~/usr/share/vim/vimfile/bundle/powerline/bindings/vim
"call vam#ActivateAddons(['powerline'])


" Normal Setting for Vim StatuLine
" Formats the statusline
set statusline=%f                           " file name
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%y      "filetype
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag

" Puts in the current git status
    if count(g:pathogen_disabled, 'Fugitive') < 1   
        set statusline+=%{fugitive#statusline()}
    endif

" Puts in syntastic warnings
    if count(g:pathogen_disabled, 'Syntastic') < 1  
        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
    endif

set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column
set statusline+=\ Buf:%n                    " Buffer number
set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" -----------------------------

" alrLine && PowerLine Config
"let g:Powerline_symbols = 'fancy'
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'compatible'
"let g:WebDevIconsUnicodeGlyphDoubleWidth = 2 
"let g:WebDevIconsUnicodeDecorateFileNodes = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
"autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL

"Buftabline Config
set hidden
nnoremap <A-k> : bnext<CR>
nnoremap <A-j> : bprev<CR>
nnoremap <A-x> : bdelete<CR>
nnoremap <A-w> : bwipeout<CR>


" fzf Plugin config
set rtp+=~/.fzf
nnoremap <C-\> :FZF<CR>


" TagBar Config
" Just configure and [make] ctags file
let g:tagbar_ctags_bin = "~/.vim/bundle/tagbar/ctags"
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


" Syntastic Config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0
" set Syntastic Cheacker engine 
" example JavaScript use JSHint [ NodeJS ]
let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_java_checkers       = ['java', 'jsp']
"let g:syntastic_c_checkers          = ['c', 'h']
"let g:syntastic_cpp_checkers        = ['cpp']


" YouCompleteMe Geek Config
set completeopt=longest,menu

let g:ycm_cache_omnifunc                                = 1
let g:ycm_global_ycm_extra_conf        = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf           = 1
let g:ycm_add_preview_to_completeopt   = 1
let g:ycm_min_num_of_chars_for_completion = 1 
let g:ycm_autoclose_preview_window_after_completion= 1
"let g:ycm_key_list_select_completion   = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
let g:ycm_complete_in_strings                           = 1   " 在字符串输入中不能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全

let g:ycm_goto_buffer_command = 'horizontal-split' 
"[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_blacklist = {
			\ 'tagbar'    : 1,
			\ 'qf'        : 1,
			\ 'notes'     : 1,
			\ 'markdown'  : 1,
			\ 'unite'     : 1,
			\ 'text'      : 1,
			\ 'vimwiki'   : 1,
			\ 'gitcommit' : 1,
\}


" tern_node_js onmicomplete with YouCompleteMe
let tern#is_show_argument_hints_enabled= 1
let g:tern_show_argument_hints="on_hold"

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
nnoremap <F6>  :SyntasticToggleMode <CR>


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger       = "<c-k>"
let g:UltiSnipsJumpForwardTrigger  = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<c-l>'
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
hi clear SignColumn


" c.vim Building Config for C/C++ Vim
let g:C_UseTool_cmake='yes'
let g:C_UseTool_doxygen = 'yes'
"let  g:C_LocalTemplateFile = $VIM.'/vimfiles/c-support/templates/Templates'


" vim-smooth-scroll Config
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-i> :call smooth_scroll#down(&scroll, 0, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" VimFiler Settings
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_tree_opened_icon     = "-"
let g:vimfiler_tree_closed_icon     = "+"
let g:vimfiler_readonly_file_icon   = "♏" "♏
let g:vimfiler_ignore_pattern       = '^\%(.git\|.idea\|.DS_Store\)$'

" CtrlP Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = {
\ 'dir'  : '\v[\/]\.(git|hg|svn)$',
\ 'file' : '\v\.(exe|so|dll|git|svn)$'
\ }

nnoremap <leader>cp :CtrlP<CR>
nnoremap <leader>cf :CtrlPFunky<CR>

" Start it in browser. Only for Linux Google Chrome
nnoremap <F8> :!google-chrome %<CR><CR>

" Check Vim Syntax name Fn
nmap <leader>yi :call <SID>SynStack()<CR>
function! <SID>SynStack()
	echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc

" LightLine Config
"let g:lightline = {
"      \ 'colorscheme': 'wombat',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component': {
"      \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
"      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
"      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
"      \ },
"      \ 'component_visible_condition': {
"      \   'readonly': '(&filetype!="help"&& &readonly)',
"      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
"      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
"      \ },
"      \ 'separator': { 'left': '', 'right': '' },
"      \ 'subseparator': { 'left': '|', 'right': '|' }
"      \ }


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
