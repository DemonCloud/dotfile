" ========================= Aix Plug Manager =========================
" Vim-Plug update Manager
" * Expert Vundle Plugin Manager
filetype off

" Vundle Path Config
" Different Path between Windows and Linux
" if(has('win32'))
" 	set rtp+=$VIM/vimfiles/bundle/Vundle.vim
" 	call vundle#rc('$VIM/vimfiles/bundle')
" else
" 	set rtp+=~/.vim/bundle/Vundle.vim
" 	call vundle#begin()
" endif
"
call plug#begin('~/.vim/bundle/')

" # Plugins Beginning #
" @ Plugin --- [ Base Require Lib & Prefix ]
" Plug 'gmarik/Vundle.vim'

" @ Plugin --- [ File Buffer Manager ]
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'yegappan/mru'
Plug 'Shougo/vimproc.vim' , { 'do': 'make' }
Plug 'danro/rename.vim'
Plug 'junegunn/fzf'

" @ Plugin --- [ Code Cheacker Viewer ] 
Plug 'simnalamburt/vim-mundo'
Plug 'Lokaltog/vim-easymotion'
" For SVN status
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'
Plug 'junegunn/limelight.vim'

" @ Plugin --- [ | Google | Geeks Plug ]
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'haya14busa/incsearch.vim'
Plug 'justinmk/vim-sneak'


" Complete Eng
if (has('nvim'))
" For NeoVim
	Plug 'Shougo/neoinclude.vim'
	Plug 'Shougo/neco-vim'
	Plug 'Shougo/neco-syntax'
 	Plug 'Shougo/deoplete.nvim'
	" Plug 'Valloric/YouCompleteMe'
	" Plug 'rdnetto/YCM-Generator'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
elseif(has('win32'))
" For Windows
	Plug 'bruno-/vim-alt-mappings'
	Plug 'Shougo/neoinclude.vim'
	Plug 'Shougo/neco-vim'
	Plug 'Shougo/neco-syntax'
	Plug 'Shougo/neocomplcache.vim'
	Plug 'Shougo/neocomplete.vim'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'skeept/Ultisnips-neocomplete-unite'
else
" For Linux Vim @ Gvim
	" Plug 'bruno-/vim-alt-mappings'
	Plug 'Shougo/neoinclude.vim'
	Plug 'Shougo/neco-vim'
	Plug 'Shougo/neco-syntax'
	Plug 'Shougo/neocomplcache.vim'
	Plug 'Shougo/neocomplete.vim'
	Plug 'skeept/Ultisnips-neocomplete-unite'
 	" Plug 'Shougo/deoplete.nvim'
	" Plug 'ternjs/tern_for_vim'
	" Plug 'Valloric/YouCompleteMe'
	" Plug 'rdnetto/YCM-Generator'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
endif

" @ Plugin --- [ Code Complete Unity ]
Plug 'mattn/emmet-vim'

" @ Plugin --- [ Geeks Plug ]
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-commentary'
" Git all famliy
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'

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
" call vundle#end()
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plug Setup End =========================
