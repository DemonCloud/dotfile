" ========================= Aix Plug Manager =========================
" Vim-Plug update Manager
" * Expert Vundle Plugin Manager
filetype off

" # Plugins Beginning
call plug#begin('~/.vim/bundle/')

" @ Plugin --- [ File Buffer Manager ]
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'justinmk/vim-dirvish'
" Plug 'unkiwii/vim-nerdtree-sync'
Plug 'w0rp/ale'
Plug 'yegappan/mru'
Plug 'simnalamburt/vim-mundo'

" MacVim 'n use fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'tweekmonster/fzf-filemru'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

" @ Plugin --- [ Code Sreach ]
Plug 'rking/ag.vim'
Plug 'rhysd/clever-f.vim'

" @ Plugin --- [ View ]
Plug 'yuttie/comfortable-motion.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'kana/vim-operator-user'
Plug 'osyo-manga/vim-anzu'
Plug 'itchyny/vim-cursorword'
Plug 'haya14busa/vim-operator-flashy'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'haya14busa/is.vim'
" Plug 'markonm/traces.vim'

" @ Plugin --- [ Code Complete Unity ]
if(has('gui'))
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'Raimondi/delimitMate'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
Plug 'neoclide/coc-neco'
Plug 'jsfaint/coc-neoinclude'
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" Plug 'ycm-core/YouCompleteMe'
" Plug 'mattn/emmet-vim'

" Plug 'Shougo/vimproc', { 'do': 'make' }
" Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deol.nvim'
" Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
" Plug 'Shougo/deoplete-clang2'
" Plug 'Shougo/deoplete-terminal'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'deoplete-plugins/deoplete-jedi'
" Plug 'deoplete-plugins/deoplete-zsh'
" Plug 'deoplete-plugins/deoplete-tag'
" Plug 'deoplete-plugins/deoplete-dictionary'
" Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm upgrade tern -g' }
" Plug 'wokalski/autocomplete-flow'

" @ Plugin --- [ VC Plug ]
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-markdown'

" Git all famliy
" For SVN status
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/vim-diff-enhanced'
" Plug 'chrisbra/changesPlugin'

" @ Plugin --- [ Syntax ]
Plug 'fatih/vim-go'
Plug 'airblade/vim-rooter'
Plug 'ajswis/vim-colorful-go'
Plug 'kh3phr3n/python-syntax'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
" Plug 'othree/javascript-libraries-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'lepture/vim-velocity'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'jason0x43/vim-js-indent'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'mxw/vim-jsx'
" Plug 'neoclide/vim-jsx-improve'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/xml.vim'
Plug 'othree/html5.vim'
Plug 'chemzqm/wxapp.vim'
Plug 'ap/vim-css-color'
Plug 'elzr/vim-json'
Plug 'SidOfc/mkdx'
" Plug 'bcicen/vim-jfmt'  "brew install jq
" Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
" Plug 'euclio/vim-markdown-composer'
" Plug 'plasticboy/vim-markdown'
" Plug 'Yggdroot/indentLine'
" Plug 'jeaye/color_coded'

" @ Plugin --- [ Code Format ]
Plug 'godlygeek/tabular'
Plug 'wellle/targets.vim'
Plug 't9md/vim-quickhl'
Plug 'kshenoy/vim-signature'
Plug 'Chiel92/vim-autoformat'
Plug 'majutsushi/tagbar'
Plug 'Valloric/ListToggle'
Plug 'Valloric/MatchTagAlways'
" Plug 'gregsexton/matchtag'
Plug 'pbrisbin/vim-mkdir'
" Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json'] }

Plug 'michaeljsmith/vim-indent-object'
Plug 'arecarn/vim-fold-cycle'
Plug 'pseewald/vim-anyfold'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'markonm/traces.vim'
" Plug 'kopischke/vim-stay'
" Plug 'Konfekt/FastFold'

" @ Plugin --- [ TextObject ]
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire' " ae, ie
Plug 'kana/vim-textobj-line'

Plug 'DemonCloud/J'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
" Plug 'morhetz/gruvbox'

" Plug 'gregsexton/gitv'
" Plug 'bagrat/vim-workspace'
Plug 'ap/vim-buftabline'
" Plug 'bagrat/vim-buffet'
Plug 'thaerkh/vim-workspace'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'rizzatti/dash.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'simeji/winresizer'
Plug 'ntpeters/vim-better-whitespace'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'ton/vim-bufsurf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ---- Plug List Complete ----
call plug#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on
" ========================= Plug Setup End =========================
