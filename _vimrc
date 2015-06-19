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
set lines=58
set columns=148
winpos 88 0

" Encoding setting
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=utf-8,latin-1
language messages en_US.utf-8

"set guifont=PragmataPro:h9:cANSI
"set guifont=Anonymice\ Powerline\ Plus\ Nerd\ File\ Types\ Mono:h10:cANSI
set guifont=ProFontWindows:h11:cANSI
"set guifont=PragmataPro\ for\ Powerline:w5:b:h11:cANSI
"set guifont=Decima\ Nova\ Pro:h11
"set guifont=PragmataPro\ For\ Powerline:h10:cANSI
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono:h10:cANSI
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

" Not complete with Vi Mode
set regexpengine=1

" -------------- Global Setting ---------------
" ## Make its Gvim Like Windows behave ## 
" So you can use 
" @ CTRL+S save the file
" @ CTRL+C copy text
" @ CTRL+P paste text
" @ CTRL+X cut text
source $VIMRUNTIME/mswin.vim
behave mswin

" @Replace <leader> keymap to <space>
let mapleader=" "

" Format 
set nu
set ts=2 "4
set shiftwidth=2 "4
set softtabstop=2 "4
set noexpandtab
set autowrite
set display=lastline


" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
"set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set showcmd
set whichwrap+=<,>,h,l
"set smartcase

" Omni Complete Setting
set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab
set shortmess=a

" No back up files 
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set cursorline
set winaltkeys=no

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

" misc settings
"set fileformat=unix     " file mode is unix
"set fileformats=unix,dos,mac

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
	set paste
	set mousemodel=popup_setpos
	set mouse=a
	"set guitablabel=%M\ %t  
else
	set t_Co=256
	set showtabline=1
	set noimd
endif

" setting the tabs like that 
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 
set list listchars=tab:-\ ,trail:\ 
" -------------- Global Setting end ---------------


" ========================= Vundle Plugin Manager =========================  

filetype off

" Vundle Config Manager
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin("$VIM/vimfiles/bundle")

" # Plugins Beginning #
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'tomtom/tlib_vim'


" @ Plugin --- [ Themes Custom ]
Plugin 'DemonCloud/J'
Plugin 'rking/vim-detailed'


" @ Plugin --- [ Style Custom ]
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'ap/vim-buftabline'


" @ Plugin --- [ Source Code Cheacker ]
Plugin 'simnalamburt/vim-mundo'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-webdevicons'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'
Plugin 'kien/ctrlp.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'xleng/YCM_WIN_X86'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'marijnh/tern_for_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'JazzCore/neocomplcache-ultisnips'


" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/livestyle-vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'


" @ Plugin --- [ CWD File Buffer Manager ] 
Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
Plugin 'airblade/vim-gitgutter'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'rking/ag.vim'


" @ Plugin --- [ Web Development Tools ]
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'


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
"au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 253)

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

"hi f1 guibg=#C0C280 guifg=#080808 ctermbg=230 ctermfg=16 gui=NONE cterm=NONE term=NONE
"hi f2 guibg=Black guifg=#C0C280 ctermbg=16 ctermfg=230 gui=NONE cterm=NONE term=NONE

" Observer
"hi f1 guibg=#C0C280 guifg=#080808 gui=NONE 
" Inserter
"hi f1 guibg=#79BE61 guifg=#181818 gui=NONE
" Command
"hi f1 guibg=#981000 guifg=#ffffff gui=NONE

"function! StatuslineModeColor()
""	let s:Status=mode()	
""  if s:Status == 'n'
""		hi f1 guibg=#C0C280 guifg=#080808 ctermbg=230 ctermfg=16 gui=NONE cterm=NONE term=NONE
""		return 'Observer'
""  elseif s:Status == 'i'
""		hi f1 guibg=#79BE61 guifg=#181818 ctermbg=83 ctermfg=16 gui=NONE cterm=NONE term=NONE
""		return 'Inserter'
""	elseif s:Status == 'v'
""		hi f1 guibg=#276888 guifg=#FFFFFF ctermbg=32 ctermfg=15 gui=NONE cterm=NONE term=NONE
""		return 'Injection'
""	else
""		hi f1 guibg=#981000 guifg=#FFFFFF ctermbg=52 ctermfg=15 gui=NONE cterm=NONE term=NONE
""		return 'Command'
""  endif
"endfunc

"set statusline=%#f1#\ %{StatuslineModeColor()}\ 
"set statusline+=%#f2#[%f][%{strlen(&fenc)?&fenc:'none'}]%y%h%m%r
"" right align laststatus
"set statusline+=\ %=C:%c\ L:%l[%L][%p%%]
"set statusline+=%#f1#\ Buff:[%n]                 " Buffer number
"set statusline+=\ [%b][0x%B]\              " ASCII and byte code under cursor

" End Status Line
" -----------------------------

" AirLine Settings
" alrLine && PowerLine Config
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'compatible'
let g:airline_theme = 'base16'
"let g:WebDevIconsUnicodeGlyphDoubleWidth = 2 
"let g:WebDevIconsUnicodeDecorateFileNodes = 1 
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL

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


""-------------------- NeoComplete ---------------------
" NeoComplete

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $VIMRUNTIME.'/vimfile/bundle/vimshell.vim/.vimshell_hist',
    \ 'scheme' : $VIMRUNTIME.'/vimfile/bundle/gosh/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction

" <TAB>: completion.
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

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
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" Noconflict NeoComplete With Vim Multiple Cursors
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction


""--------------------- YouCompleteMe ------------------------
" If you choice NeoComplete , That you want use YouCompleteMe

" YouCompleteMe Geek Config
"let g:ycm_cache_omnifunc                                = 1
"let g:ycm_global_ycm_extra_conf                         = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf                            = 1
"let g:ycm_add_preview_to_completeopt                    = 1
"let g:ycm_min_num_of_chars_for_completion               = 1
"let g:ycm_autoclose_preview_window_after_completion     = 1
"let g:ycm_key_list_select_completion                    = ['<c-n>']
"let g:ycm_key_list_previous_completion                  = ['<c-p>']
"
"let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
"let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
"let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
"let g:ycm_complete_in_strings                           = 1   " 在字符串输入中不能补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全
"
"let g:ycm_goto_buffer_command = 'horizontal-split' 
""[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
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


" tern_node_js onmicomplete with YouCompleteMe
let tern#is_show_argument_hints_enabled= 1
let g:tern_show_argument_hints="on_hold"


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use [YouCompleteMe] or [NeoComplete].
"let g:UltiSnipsExpandTrigger      = "<c-x>"
let g:UltiSnipsJumpForwardTrigger  = "<c-f>"
let g:UltiSnipsJumpBackwardTrigger = "<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_mode='a'
let g:user_emmet_expandabbr_key ='<C-e>'
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
let g:vimfiler_readonly_file_icon   = "?"
let g:vimfiler_ignore_pattern       = '^\%(.git\|.idea\|.DS_Store\)$'

" CtrlP Settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = {
\ 'dir'  : '\v[\/]\.(git|hg|svn)$',
\ 'file' : '\v\.(exe|so|dll|git|svn)$'
\ }

" Unite Settings
let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable      = 1
let g:unite_source_rec_async_command        = 1
let g:unite_source_grep_command             = 'ag'
let g:unite_source_grep_default_opts        = '--nocolor --nogroup --column'
let g:unite_source_grep_recursive_opt       = ''
let g:unite_source_history_yank_enable      = 1
call unite#custom#source('file_rec,file_rec/async', 'max_candidates', 0)
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])


" --------- KeyMapping Config -----------

" Start It In Browser. Only for Linux Google Chrome
nnoremap <F4>  :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
nnoremap <F5>  :NERDTreeToggle<CR>
nnoremap <F6>  :SyntasticToggleMode <CR>
nnoremap <F7>  :GundoToggle<CR>
nnoremap <F8>	 :silent update<Bar>silent !google-chrome %:p &<CR>
nnoremap <F9>	 :silent update<Bar>silent !firefox %:p &<CR>

" Window VertSplit switcher
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l


" Set as toggle foldcomment
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
" Fast searcher
nnoremap zs ?\v
nnoremap zq /\v
nnoremap z, :FZF<CR>
nnoremap / /\v

"vnoremap <slient> ? ?\v
"vnoremap <slient> ? ?\v
nnoremap ' `
nnoremap ` '
nnoremap <silent> zj o<ESC>k
nnoremap <silent> zk O<ESC>j

" Format Jump
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g; g;zz
nnoremap <silent> g: g:zz

" Smooth Scroll the terminal
nnoremap <silent> <A-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <A-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Cursor Moving
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-h> <Left>
cnoremap <A-l> <Right>
" Buftabline Config
nnoremap <A-j> : bnext<CR>
nnoremap <A-k> : bprev<CR>
nnoremap <A-l> : bnext<CR>
nnoremap <A-h> : bprev<CR>
nnoremap <A-x> : bdelete<CR>
nnoremap <A-w> : bwipeout<CR>

" Check Vim Syntax name Fn
nnoremap <leader>yi :call <SID>SynStack()<CR>
nnoremap <leader>w  :w!<CR>
nnoremap <leader>q  :wq<CR>

" Command
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cx :%s///gm
nnoremap <leader>cf :CtrlPFunky<CR>
" repeat Prev Command
nnoremap <leader>c; q:k<CR>

" Unite file config
" Ag searcher
nnoremap <leader>uf :Unite file -complete<CR>
nnoremap <leader>up :Unite file_rec/async<CR>
nnoremap <leader>us :Unite grep:.<CR>
nnoremap <leader>vf :VimFiler<CR>
nnoremap <leader>ag :Ag 

" Vundle keyfire
nnoremap <leader>vi :PLuginInstall<CR>
nnoremap <leader>vu :PluginUpdate<CR>

" Tabluer Format
vnoremap <leader>t :Tabularize/
vnoremap <leader>= :Tabularize/=<CR>
vnoremap <leader>, :Tabularize/,<CR>
vnoremap <leader>; :Tabularize/:<CR>


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
