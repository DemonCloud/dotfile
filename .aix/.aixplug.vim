" ========================= Aix Plug Manager =========================
" Vim-Plug update Manager
" * Expert Vundle Plugin Manager
filetype off
"
" # Plugins Beginning 
call plug#begin('~/.vim/bundle/')

" @ Plugin --- [ File Buffer Manager ]
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'yegappan/mru'
Plug 'Shougo/vimproc.vim' , { 'do': 'make' }
Plug 'danro/rename.vim'

" MacVim 'n use fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ctrlpvim/ctrlp.vim'

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'
Plug 'junegunn/limelight.vim'

" @ Plugin --- [ | Google | Geeks Plug ]
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/incsearch.vim'

Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
" @ Plugin --- [ Code Complete Unity ]
Plug 'mattn/emmet-vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator'


" Complete Engine
if (has('nvim'))
" For NeoVim
 	Plug 'Shougo/deoplete.nvim'
elseif(has('win32'))
	" For Windows
	Plug 'Shougo/neocomplcache.vim'
	Plug 'Shougo/neocomplete.vim'
	Plug 'skeept/Ultisnips-neocomplete-unite'
else
" For Linux Vim @ Gvim @ MacVim
	Plug 'Shougo/neocomplcache.vim'
	Plug 'Shougo/neocomplete.vim'
	Plug 'skeept/Ultisnips-neocomplete-unite'
endif

" @ Plugin --- [ Geeks Plug ]
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Git all famliy
Plug 'airblade/vim-gitgutter'
" For SVN status
Plug 'mhinz/vim-signify'

" @ Plugin --- [ Syntax ] 
Plug 'kh3phr3n/python-syntax'
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

" @ Plugin --- [ Code Format ]
Plug 'godlygeek/tabular'
Plug 't9md/vim-quickhl' 
Plug 'Chiel92/vim-autoformat'

" @ Plugin --- [ ColorScheme ]
Plug 'DemonCloud/vim-autoclose'
Plug 'DemonCloud/J'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'

" ---- Plug List Complete ----
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Plug Setup End =========================
