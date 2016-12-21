" ========================= Aix Plugin Manager =========================
" Vundle Plugin Manager
filetype off

" Different Path between Windows and Linux
if(has('win32'))
	set rtp+=$VIM/vimfiles/bundle/Vundle.vim
	call vundle#rc('$VIM/vimfiles/bundle')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

" # Plugins Beginning #
" @ Plugin --- [ Base Require Lib & Prefix ]
Plugin 'gmarik/Vundle.vim'

" @ Plugin --- [ File Buffer Manager ]
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
Plugin 'yegappan/mru'
Plugin 'Shougo/vimproc.vim'
Plugin 'danro/rename.vim'
Plugin 'junegunn/fzf'

" @ Plugin --- [ Code Cheacker Viewer ] 
Plugin 'simnalamburt/vim-mundo'
Plugin 'Lokaltog/vim-easymotion'
" For SVN status
" Plugin 'mhinz/vim-signify'
Plugin 'airblade/vim-gitgutter'

" @ Plugin --- [ Code Sreach ]
Plugin 'rking/ag.vim'
Plugin 'junegunn/limelight.vim'

" @ Plugin --- [ | Google | Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
Plugin 'haya14busa/incsearch.vim'
Plugin 'justinmk/vim-sneak'

" Complete Eng
if (has('nvim'))
" For NeoVim
	Plugin 'Shougo/neoinclude.vim'
	Plugin 'Shougo/neco-vim'
	Plugin 'Shougo/neco-syntax'
 	Plugin 'Shougo/deoplete.nvim'
	" Plugin 'Valloric/YouCompleteMe'
	" Plugin 'rdnetto/YCM-Generator'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
elseif(has('win32'))
" For Windows
	Plugin 'bruno-/vim-alt-mappings'
	Plugin 'Shougo/neoinclude.vim'
	Plugin 'Shougo/neco-vim'
	Plugin 'Shougo/neco-syntax'
	Plugin 'Shougo/neocomplcache.vim'
	Plugin 'Shougo/neocomplete.vim'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	Plugin 'skeept/Ultisnips-neocomplete-unite'
else
" For Linux Vim @ Gvim
	" Plugin 'bruno-/vim-alt-mappings'
	Plugin 'Shougo/neoinclude.vim'
	Plugin 'Shougo/neco-vim'
	Plugin 'Shougo/neco-syntax'
	Plugin 'Shougo/neocomplcache.vim'
	Plugin 'Shougo/neocomplete.vim'
	Plugin 'skeept/Ultisnips-neocomplete-unite'
 	" Plugin 'Shougo/deoplete.nvim'
	" Plugin 'ternjs/tern_for_vim'
	" Plugin 'Valloric/YouCompleteMe'
	" Plugin 'rdnetto/YCM-Generator'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
endif

" @ Plugin --- [ Code Complete Unity ]
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/vim-hyperstyle'

" @ Plugin --- [ Geeks Plugin ]
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'

" @ Plugin --- [ Syntax ] 
Plugin 'kh3phr3n/python-syntax'
Plugin 'pangloss/vim-javascript'
" Plugin 'ap/vim-css-color'
Plugin 'elzr/vim-json'
Plugin 'plasticboy/vim-markdown'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 't9md/vim-quickhl' 
Plugin 'Chiel92/vim-autoformat'

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'ryanoasis/vim-devicons'

" ---- Plugin List Complete ----
call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plugin Setup End =========================
