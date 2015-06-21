" 
"                         YiJun Linux GVim dotfile
"  
"                                2015.1.18 
"
"                 ★★★ I Love You <★ Meredith ★> Forever ★★★
"
"
"
" ========================= Normal Setting Start =========================  

" Set Linux Debian Desktop
runtime! debian.vim

" Not complete with Vi Mode
set nocompatible
set regexpengine=1

"Init
"Set windows pos and resize
set lines=48
set columns=118

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


" ------------- Fonts Setting ---------------
" The fonts You will find on GitHub
" https://github.com/ryanoasis/nerd-filetype-glyphs-fonts-patcher
" Encoding setting
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8

" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set showcmd
set whichwrap+=<,>,h,l

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
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac

" set Undo file
set undofile
set undodir=~/.vim/undo

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

	" Fonts Settings
	"set guifont=ProfontWindows\ 9
	"set guifont=IBM\ 3270\ Narrow\ Medium\ 10 
	"set guifont=PragmataPro\ for\ Powerline\ Bold\ 10
	"set guifont=Decima\ Nova\ Pro
	"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Bold\ 8
	set guifont=Anonymice\ Powerline\ Plus\ Nerd\ File\ Types\ 8 
	"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ Mono
	"set guifont=PragmataPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Bold\ 10
else
	set t_Co=256
	set showtabline=1
	set noimd
endif

" setting the tabs like that 
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 
"set list listchars=tab:-\ ,trail:\ 
set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪
" -------------- Global Setting end ---------------

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

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J'
Plugin 'DemonCloud/vim-aixinde'
Plugin 'morhetz/gruvbox'
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-webdevicons'

" @ Plugin --- [ Style Custom ]
Plugin 'Lokaltog/vim-distinguished'
Plugin 'ap/vim-buftabline'
Plugin 'terryma/vim-smooth-scroll'


" @ Plugin --- [ Source Code Cheacker ]
Plugin 'simnalamburt/vim-mundo'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'


" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/livestyle-vim'

" @ Plugin --- [ Auto Complete ]
Plugin 'Raimondi/delimitMate'
"Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'


" @ Plugin --- [ CWD File Buffer Manager ] 
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yegappan/mru'


" @ Plugin --- [ Git && Shell Tools ]
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-signify'


" @ Plugin --- [ Code BAT Sreach ]
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/limelight.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'dyng/ctrlsf.vim'


" @ Plugin --- [ Web Development Tools ]
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'StanAngeloff/php.vim'

" @ Plugin --- [ ADV Program Language ]
Plugin 'octol/vim-cpp-enhanced-highlight'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'yuratomo/w3m.vim'

" ---- Plugin List Complete ----

call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on



" @ COLOR Themes
" If you are not having them. You Search in Google and download them

" Set Color Themes 
set background=dark
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
""	if s:Status == 'n'
""		hi f1 guibg=#C0C280 guifg=#080808 ctermbg=230 ctermfg=16 gui=NONE cterm=NONE term=NONE
""		return 'Observer'
""	elseif s:Status == 'i'
""		hi f1 guibg=#79BE61 guifg=#181818 ctermbg=83 ctermfg=16 gui=NONE cterm=NONE term=NONE
""		return 'Inserter'
""	elseif s:Status == 'v'
""		hi f1 guibg=#276888 guifg=#FFFFFF ctermbg=32 ctermfg=15 gui=NONE cterm=NONE term=NONE
""		return 'Injection'
""	else
""		hi f1 guibg=#981000 guifg=#FFFFFF ctermbg=52 ctermfg=15 gui=NONE cterm=NONE term=NONE
""		return 'Command'
""	endif
"endfunc
"set statusline=%#f1#\ %{StatuslineModeColor()}\ 
"set statusline+=%#f2#[%f][%{strlen(&fenc)?&fenc:'none'}]%y%h%m%r
""" right align laststatus
"set statusline+=\ %=C:%c\ L:%l/%L[%p%%]
"set statusline+=%#f1#\ Buff:[%n]                 " Buffer number
"set statusline+=\ [%b][0x%B]\              " ASCII and byte code under cursor

" End Status Line
" -----------------------------

" alrLine && PowerLine Config
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'compatible'
let g:airline_theme = 'base16'
let g:WebDevIconsUnicodeGlyphDoubleWidth = 2 
let g:WebDevIconsUnicodeDecorateFileNodes = 1 
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL

" fzf Plugin config
set rtp+=~/.fzf

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
hi f3 guibg=#981000 guifg=#FFFFFF ctermbg=52 ctermfg=15 gui=NONE cterm=NONE term=NONE
set statusline+=%#f3#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
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
let g:ycm_cache_omnifunc                                = 1
let g:ycm_global_ycm_extra_conf                         = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf                            = 1
let g:ycm_add_preview_to_completeopt                    = 1
let g:ycm_min_num_of_chars_for_completion               = 1
let g:ycm_autoclose_preview_window_after_completion     = 1
let g:ycm_key_list_select_completion                    = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion                  = ['<c-p>', '<Up>']

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


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger     = "<Tab>"
let g:UltiSnipsJumpForwardTrigger  = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><Tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<S-Tab>'
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

" Vimshell Settings
let g:vimshell_prompt = "AixShell:$ "
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" Unite Settings
let g:unite_source_file_rec_max_cache_files = 0
let g:unite_source_history_yank_enable      = 1
let g:unite_source_rec_async_command        = 1
let g:unite_source_grep_command             = 'ag'
let g:unite_source_grep_default_opts        = '--nocolor --nogroup --column'
let g:unite_source_grep_recursive_opt       = ''
let g:unite_source_history_yank_enable      = 1
let g:unite_split_rule                      = "botright"
let g:unite_update_time                     = 100
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ '.sass-cache',
      \ 'node_modules/',
      \ 'bower_components/',
      \ 'dist/',
      \ '.git5_specs/',
      \ '.pyc',
      \ ], '\|'))
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" VimFiler Settings
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_as_default_explorer  = 1
let g:vimfiler_tree_opened_icon     = "-"
let g:vimfiler_tree_closed_icon     = "+"
let g:vimfiler_readonly_file_icon   = "?"
let g:vimfiler_ignore_pattern       = '^\%(.git\|.idea\|.DS_Store\)$'

" CtrlP Settings
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git

let g:ctrlp_map = '<C-\>'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Ack Settings
if executable('ag')
  let g:ackprg = "ag --nocolor --nogroup --column"
elseif executable('ack-grep')
  let g:ackprg = "ack-grep --nocolor --nogroup --column"
elseif executable('ack')
  let g:ackprg = "ack --nocolor --nogroup --column"
endif

" Multip C©r2015JJohn Doe
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" --------- KeyMapping Config -----------

" Start it in browser. Only for Linux Google Chrome
nnoremap <F4>  :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>
nnoremap <F5>  :NERDTreeToggle<CR>
nnoremap <F6>  :SyntasticToggleMode <CR>
nnoremap <F7>  :GundoToggle<CR>
nnoremap <F8>	 :silent update<Bar>silent !google-chrome %:p &<CR>
nnoremap <F9>	 :silent update<Bar>silent !firefox %:p &<CR>
nnoremap <F10> :YcmForceCompileAndDiagnostics <CR>
nnoremap <F11> :YcmDebugInfo<CR>
nnoremap <F12> :YcmRestartServer<CR>

" Normal Key Map
nnoremap U :redo<CR>
nnoremap Q :q!<CR>
nnoremap W :w!<CR>

" Window VertSplit switcher
nnoremap <leader>h  <C-w>h
nnoremap <leader>hh <C-w>h
nnoremap <leader>j  <C-w>j
nnoremap <leader>jj <C-w>j
nnoremap <leader>k  <C-w>k
nnoremap <leader>kk <C-w>k
nnoremap <leader>l  <C-w>l
nnoremap <leader>ll <C-w>l

" Set as toggle foldcomment
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
nnoremap zc @=((foldclosed(line('.')) < 0) ? 'zc' :'zo')<CR>
" Fast searcher
nnoremap zs ?\v
nnoremap zq /\v
nnoremap z, :FZF --no-mouse .<CR>
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

inoremap <C-b> <ESC>A
inoremap <C-e> <ESC><Home>i
inoremap <C-w> <ESC>f<space>a
inoremap <C-u> <ESC>c<Home>


" Buftabline Config
nnoremap <A-j> :bnext<CR>
nnoremap <A-k> :bprev<CR>
nnoremap <A-l> :bnext<CR>
nnoremap <A-h> :bprev<CR>
nnoremap <A-x> :bdelete<CR>
nnoremap <A-w> :bwipeout<CR>

" Check Vim Syntax name Fn
nnoremap <leader>yi :call <SID>SynStack()<CR>
nnoremap <leader>w  :w!<CR>
nnoremap <leader>q  :wq<CR>
nnoremap <leader>hs :MRU<CR>

" Command
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cx :%s///gm
nnoremap <leader>cf :CtrlPFunky<CR>
" repeat Prev Command
nnoremap <leader>c; q:k<CR>

" Unite file configure
" Ag searcher
nnoremap <leader>ui :Unite file -complete<CR>
nnoremap <leader>uf :Unite file find:<CR>
nnoremap <leader>up :Unite file_rec/async<CR>
nnoremap <leader>us :Unite grep:.<CR>
nnoremap <leader>vf :VimFiler<CR>
nnoremap <leader>vs :vs<CR>
nnoremap <leader>lp :sp<CR>
nnoremap <leader>ag :Ag 

" Editor
nnoremap <silent> <leader>en :e! ~/.nvimrc<CR>
nnoremap <silent> <leader>ev :e! ~/.vim/vimrc<CR>
" copy path
nnoremap <silent> <leader>cp :let @+=expand("%:p")<CR>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<CR>

" Vundle keyfire
nnoremap <leader>vi :PluginInstall<CR>
nnoremap <leader>vu :PluginUpdate<CR>

" Tabluer Format
vnoremap <leader>t :Tab/
vnoremap <leader>= :Tab/=<CR>
vnoremap <leader>, :Tab/,<CR>
vnoremap <leader>; :Tab/:<CR>
vnoremap <leader>. :Tab/.<CR>

" <leader>s: Spell checking shortcuts
nnoremap <leader>ss :setlocal spell!<CR>
nnoremap <leader>sj ]szz
nnoremap <leader>sk [szz
nnoremap <leader>sa zg]szz
nnoremap <leader>sd 1z=
nnoremap <leader>sf z=

" Multi Cursor Find
vnoremap <leader>mf :MultipleCursorsFind 

" Multi Expand Region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)


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
