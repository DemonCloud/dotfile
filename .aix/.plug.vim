" ========================= Aix Plug Manager =========================
" Vim-Plug update Manager
" * Expert Vundle Plugin Manager
filetype off

" # Plugins Beginning
call plug#begin('~/.vim/bundle/')

" @ Plugin --- [ File Buffer Manager ]
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'yegappan/mru'
Plug 'danro/rename.vim'
Plug 'simnalamburt/vim-mundo'

" MacVim 'n use fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'ctrlpvim/ctrlp.vim'

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'

" @ Plugin --- [ View ]
Plug 'yuttie/comfortable-motion.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/incsearch.vim'
Plug 'thinca/vim-quickrun'
Plug 'osyo-manga/vim-anzu'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/is.vim'

" @ Plugin --- [ Code Complete Unity ]
" Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
" Currently, es6 version of snippets is available in es6 branch only
Plug 'letientai299/vim-react-snippets', { 'branch': 'es6' }
Plug 'honza/vim-snippets'
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global upgrade tern' }
Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deol.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-zsh'
Plug 'wokalski/autocomplete-flow'

" @ Plugin --- [ VC Plug ]
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

" Git all famliy
" For SVN status
Plug 'airblade/vim-gitgutter'
" Plug 'mhinz/vim-signify'
Plug 'chrisbra/vim-zsh'
Plug 'chrisbra/vim-diff-enhanced'
" Plug 'chrisbra/changesPlugin'

" @ Plugin --- [ Syntax ]
Plug 'fatih/vim-go'
Plug 'kh3phr3n/python-syntax'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/html5.vim'
Plug 'mxw/vim-jsx'
" Plug 'chemzqm/vim-jsx-improve'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'bcicen/vim-jfmt' " brew install jq
Plug 'plasticboy/vim-markdown'
" Plug 'Yggdroot/indentLine'
" Plug 'jeaye/color_coded'

" @ Plugin --- [ Code Format ]
Plug 'godlygeek/tabular'
Plug 'wellle/targets.vim'
Plug 't9md/vim-quickhl'
Plug 'Chiel92/vim-autoformat'
Plug 'majutsushi/tagbar'
Plug 'Valloric/ListToggle'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

" Plug 'pseewald/vim-anyfold'
" Plug 'kopischke/vim-stay'
" Plug 'Konfekt/FastFold'

" @ Plugin --- [ ColorScheme ]
Plug 'DemonCloud/vim-autoclose'
Plug 'DemonCloud/J'
" Plug 'morhetz/gruvbox'
" Plug 'ayu-theme/ayu-vim'
" Plug 'rakr/vim-one'

" Plug 'gregsexton/gitv'
" Plug 'bagrat/vim-workspace'
Plug 'ap/vim-buftabline'
Plug 'rizzatti/dash.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'simeji/winresizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'

" ---- Plug List Complete ----
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Plug Setup End =========================
