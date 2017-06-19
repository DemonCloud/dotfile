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
Plug 'danro/rename.vim'

" MacVim 'n use fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'wincent/command-t', { 'do': 'cd ruby/command-t && ruby extconf.rb && make' }
Plug 'ctrlpvim/ctrlp.vim'

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'

" @ Plugin --- [ View ]
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/incsearch.vim'

" @ Plugin --- [ Code Complete Unity ]
Plug 'mattn/emmet-vim'
" Plug 'maralla/completor.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Plug 'Shougo/vimshell'

" @ Plugin --- [ VC Plug ]
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Git all famliy
" For SVN status
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'

" @ Plugin --- [ Syntax ] 
Plug 'kh3phr3n/python-syntax'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'mxw/vim-jsx'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
" Plug 'jeaye/color_coded'

" @ Plugin --- [ Code Format ]
Plug 'godlygeek/tabular'
Plug 't9md/vim-quickhl' 
Plug 'Chiel92/vim-autoformat'

" @ Plugin --- [ ColorScheme ]
Plug 'DemonCloud/vim-autoclose'
Plug 'DemonCloud/J'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rizzatti/dash.vim'
Plug 'gregsexton/gitv'
" Plug 'ryanoasis/vim-devicons'

" ---- Plug List Complete ----
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Plug Setup End =========================
