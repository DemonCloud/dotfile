
" ========================= Aix Plugin Manager =========================

" Vundle Plugin Manager

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" # Plugins Beginning #
" @ Plugin --- [ Base Require Lib & Prefix ]
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'romainl/vim-qf'
Plugin 'mattn/webapi-vim'
Plugin 'bruno-/vim-alt-mappings'

" @ Plugin --- [ File Buffer Manager ]
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ap/vim-buftabline'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neossh.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'yegappan/mru'
Plugin 'danro/rename.vim'

" @ Plugin --- [ Code Cheacker Viewer ] 
Plugin 'simnalamburt/vim-mundo'
Plugin 'majutsushi/tagbar'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'justinmk/vim-sneak'
"Plugin 'goldfeld/vim-seek'
Plugin 'haya14busa/incsearch.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-obsession'

" @ Plugin --- [ Code Sreach ]
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'junegunn/limelight.vim'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-expand-region'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ebfe/vim-racer'
Plugin 'rdnetto/YCM-Generator'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'JazzCore/neocomplcache-ultisnips'

" @ Plugin --- [ Code Complete Unity ]
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/livestyle-vim'
Plugin 'Raimondi/delimitMate'

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
Plugin 'pangloss/vim-javascript'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'digitaltoad/vim-jade'
Plugin 'elzr/vim-json'
Plugin 'chrisbra/csv.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'plasticboy/vim-markdown'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rust-lang/rust.vim'
Plugin 'guns/xterm-color-table.vim'

" @ Plugin --- [ Code Format ]
Plugin 'godlygeek/tabular'
Plugin 'dimasg/vim-mark'

" @ Plugin --- [ ColorScheme ]
Plugin 'DemonCloud/J'
Plugin 'DemonCloud/vim-aixinde'
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
