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
set columns=168
winpos 88 0

" ## Make its Gvim Like Windows behave ## 
" So you can use 
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" No back up files 
set nobackup
set noswapfile
set nowritebackup
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
set fileencodings=ucs-bom,utf-8,latin1
set guifont=PragmataPro\ for\ Powerline:w5:b:h11:cANSI
"set guifont=Decima\ Nova\ Pro:h11
"set guifont=PragmataPro:w5:b:h11:cANSI
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 10
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ Mono
"set guifont=ProgramPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 10

" Search and Case
set autoindent
set smartindent
set cindent
set autoread
set ignorecase
set hlsearch
set wrap

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
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin("$VIM/vimfiles/bundle")

" # Plugins Beginning #
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
"Plugin 'tomtom/tlib_vim'
"Plugin 'dbarsam/vim-vimtweak'


" @ Plugin --- [ Themes Custom ]
Plugin 'altercation/vim-colors-solarized'
"Plugin 'morhetz/gruvbox'
Plugin 'rking/vim-detailed'


" @ Plugin --- [ Style Custom ]
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'ap/vim-buftabline'
"Plugin 'Lokaltog/vim-powerline'


" @ Plugin --- [ Source Code Cheacker ]
"Plugin 'sjl/gundo.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
"Plugin 'lukaszkorecki/CoffeeTags' "## need Ruby surport


" NERDTree Plugins Collections
"Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
"Plugin 'Valloric/ListToggle'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neocomplete.vim'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
"Bundle 'skeept/Ultisnips-neocomplete-unite'
"Plugin 'fatih/vim-go'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
"Plugin 'c9s/perlomni.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
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


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'
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
"Plugin 'othree/html5.vim'
"Plugin 'othree/html5-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'
"Plugin 'vim-scripts/c.vim'
"Plugin 'vim-scripts/a.vim'

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
"colorsche jellybeans
"colorscheme hybrid
colorscheme solarized
"colorscheme gruvbox
"colorscheme darktango
"colorscheme hybrid-light
"colorscheme badwolf
"colorscheme mirodark	
"colorscheme codeschool

"call VimTweak Opacity
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 252)

" ========================= Vundle Plugin Setup End ========================= 



" ========================= Plugin Config Start ========================= 

" @ Linux Install Python PowerLine settings
" @ If you used [airline]  You should Ignor this! 

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" -----------------------------

" alrLine && PowerLine Config
"let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:Powerline_symbols = 'compatible'
"let g:WebDevIconsUnicodeGlyphDoubleWidth = 2 
"let g:WebDevIconsUnicodeDecorateFileNodes = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''


"Buftabline Config
set hidden
nnoremap <A-p> :bnext<CR>
nnoremap <A-n> :bprev<CR>
nnoremap <A-x> :bdelete<CR>
nnoremap <A-w> :bwipeout<CR>

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

nnoremap <F6>  :SyntasticToggleMode <CR>


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
inoremap <expr><C-e>  neocomplete#cancel_popup()
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


" ListToggle QuickFix Config
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" YouCompleteMe Geek Config
set completeopt=longest,menu

"let g:ycm_global_ycm_extra_conf                         = '$VIM/vimfiles/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf                            = 0
"let g:ycm_add_preview_to_completeopt					= 0
"
"let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion               = 2   " 从第2个键入字符就开始罗列匹配项
"let g:ycm_cache_omnifunc                                = 1
"let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
"let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
"let g:ycm_complete_in_strings                           = 0   " 在字符串输入中不能补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全
"
"let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
"let g:ycm_filetype_blacklist = {
""			\ 'tagbar'    : 1,
""			\ 'qf'        : 1,
""			\ 'notes'     : 1,
""			\ 'markdown'  : 1,
""			\ 'unite'     : 1,
""			\ 'text'      : 1,
""			\ 'vimwiki'   : 1,
""			\ 'gitcommit' : 1,
""\}
"
"
"nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>


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
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" VimFiler Settings
let g:vimfiler_safe_mode_by_default=0
let g:vimfiler_as_default_explorer=1
let g:vimfiler_tree_opened_icon = "-"
let g:vimfiler_tree_closed_icon = "+"
let g:vimfiler_readonly_file_icon = "🔒" "♏
let g:vimfiler_ignore_pattern = '^\%(.git\|.idea\|.DS_Store\)$'

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

