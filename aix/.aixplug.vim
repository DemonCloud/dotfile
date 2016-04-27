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
Plugin 'thinca/vim-quickrun'
Plugin 'L9'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'romainl/vim-qf'
Plugin 'mattn/webapi-vim'

" @ Plugin --- [ File Buffer Manager ]
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'tsukkee/unite-tag'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'danro/rename.vim'
Plugin 'junegunn/fzf'

" @ Plugin --- [ Code Cheacker Viewer ] 
Plugin 'simnalamburt/vim-mundo'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-obsession'

" @ Plugin --- [ Code Sreach ]
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'junegunn/limelight.vim'

" @ Plugin --- [ | Google | Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
Plugin 'ebfe/vim-racer'
Plugin 'haya14busa/incsearch.vim'

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
	Plugin 'xleng/YCM_WIN_X86'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	Plugin 'skeept/Ultisnips-neocomplete-unite'
else
" For Linux Vim @ Gvim
	Plugin 'bruno-/vim-alt-mappings'
"	Plugin 'Shougo/neoinclude.vim'
"	Plugin 'Shougo/neco-vim'
"	Plugin 'Shougo/neco-syntax'
"	Plugin 'Shougo/neocomplcache.vim'
"	Plugin 'Shougo/neocomplete.vim'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'rdnetto/YCM-Generator'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	Plugin 'skeept/Ultisnips-neocomplete-unite'
endif

" @ Plugin --- [ Code Complete Unity ]
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/livestyle-vim'

" @ Plugin --- [ Geeks Plugin ]
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-commentary'
Plugin 'gregsexton/gitv'
Plugin 'bruno-/vim-man'
Plugin 'dhruvasagar/vim-table-mode'

" @ Plugin --- [ Syntax ] 
Plugin 'justinmk/vim-syntax-extra' "Extra C Flex Syntax
Plugin 'WolfgangMehner/c.vim'
Plugin 'Kris2k/A.vim'
Plugin 'othree/html5.vim'
Plugin 'kh3phr3n/python-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'chrisbra/csv.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-jp/vim-cpp'
Plugin 'rust-lang/rust.vim'
Plugin '13k/vim-nginx'
Plugin 'guns/xterm-color-table.vim'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 't9md/vim-quickhl' 
Plugin 'Chiel92/vim-autoformat'

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J'
"Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-devicons'

" ---- Plugin List Complete ----
call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Vundle Plugin Setup End =========================
