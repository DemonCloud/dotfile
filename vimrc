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
"                 ♥♥♥ I Love You <♥Meredith♥> Forever ♥♥♥
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
set ts=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set nu

" Encoding setting
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
set encoding=utf-8
set guifont=IBM\ 3270\ Narrow\ Medium\ 12
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
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tomtom/tlib_vim'

" @ Plugin --- [ Style Custom ]
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'ap/vim-buftabline'
"Plugin 'Lokaltog/vim-powerline'


" @ Plugin --- [ Source Code Cheacker ]
"Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/ListToggle'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'fatih/vim-go'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
"Plugin 'c9s/perlomni.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'


" @ Plugin --- [ CWD File Buffer Manager ] 
"Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/unite-outline'
"Plugin 'Shougo/unite-session'
Plugin 'Shougo/vimfiler.vim'
"Plugin 'tsukkee/unite-tag'
"Plugin 'thinca/vim-unite-history'
Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
"Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'kien/ctrlp.vim'
"Plugin 'thinca/vim-quickrun'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'mklabs/grunt.vim'


" @ Plugin --- [ Web Development Tools ]
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
"Plugin 'chrisbra/Colorizer'
"Plugin 'skammer/vim-css-color'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'

" @ Plugin --- [ ADV Program Language ]
"Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'

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

"colorscheme distinguished
"colorscheme jellybeans
"colorscheme hybrid
"colorscheme solarized
colorscheme gruvbox
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

" -----------------------------
set rtp+=~/.fzf

" alrLine && PowerLine Config
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
"let Powerline_symbols = 'compatible
"let g:WebDevIconsUnicodeGlyphDoubleWidth = 2 
"let g:WebDevIconsUnicodeDecorateFileNodes = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''


"Buftabline Config
set hidden
nnoremap <A-n> :bnext<CR>
nnoremap <A-p> :bprev<CR>
nnoremap <A-x> :bdelete<CR>
nnoremap <A-w> :bwipeout<CR>

" TagBar Config
let g:tagbar_ctags_bin = "/usr/bin/ctags"


" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

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


" ListToggle QuickFix Config
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" YouCompleteMe Geek Config
set completeopt=longest,menu

let g:ycm_global_ycm_extra_conf        = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf           = 0
let g:ycm_add_preview_to_completeopt   = 0
let g:ycm_min_num_of_chars_for_completion = 3 
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_key_list_select_completion   = ['<c-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
let g:ycm_cache_omnifunc                                = 1
let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
let g:ycm_complete_in_strings                           = 0   " 在字符串输入中不能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
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
let g:vimfiler_safe_mode_by_default=0
let g:vimfiler_as_default_explorer=1
let g:vimfiler_tree_opened_icon = "-"
let g:vimfiler_tree_closed_icon = "+"
let g:vimfiler_readonly_file_icon = "🔒" "♏
let g:vimfiler_ignore_pattern = '^\%(.git\|.idea\|.DS_Store\)$'

" CtrlP Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" Start it in browser. Only for Linux Google Chrome
nnoremap <F8> :!google-chrome %<CR><CR>

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
