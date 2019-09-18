" ========================= Plugin Config Start =========================

" AirLine
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline_theme = "distinguished"
" let g:airline_theme = "zenburn"
" let g:airline_theme = "onedark"
  
let g:airline_left_sep=''
let g:airline_right_sep=''
" use Aix.font
" if(has("gui"))
"   let g:airline_left_sep='◣'
"   let g:airline_right_sep='◥'
" endif

" Set Ale Cheacker
let g:ale_sign_error = '×'
let g:ale_sign_warning = '*'
" let g:ale_virtualtext_cursor = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'html': ['htmlhint'],
      \   'css': ['stylelint'],
      \   'md': ['mdl'],
      \   'markdown': ['mdl'],
      \   'sass' : ['stylelint'],
      \   'scss' : ['stylelint'],
      \}
let g:ale_completion_enabled = 1
" set termguicolors
let ayucolor="dark"   " for dark version of theme
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme

" fzf Setting
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

"------------------ Deopelete -------------------
" Use deoplete.
let g:deoplete#enable_at_startup = 1

"------------------ YouCompleteMe -------------------
" Linux vim && NeoVim Using YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_collect_identifiers_from_tags_files = 10
" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_use_ultisnips_completer = 0
" let g:ycm_cache_omnifunc = 1
" let g:ycm_min_num_of_chars_for_completion = 99999
let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>']
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'mundo': 1,
      \ 'fzf': 1,
      \ 'ctrlp' : 1
      \}

let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<Tab>'
let g:user_emmet_settings = {
      \ 'php'     : {
      \   'extends' : 'html',
      \   'filters' : 'c',
      \ },
      \ 'xml'     : {
      \   'extends' : 'html',
      \ },
      \ 'haml'    : {
      \   'extends' : 'html',
      \ },
      \ 'phtml'    : {
      \   'extends' : 'html',
      \ },
      \ 'wxss': {
      \   'extends': 'css',
      \ },
      \ 'wxml': {
      \   'extends': 'html',
      \   'aliases': {
      \     'div': 'view',
      \     'span': 'text',
      \   },
      \  'default_attributes': {
      \     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
      \     'navigator': [{'url': '', 'redirect': 'false'}],
      \     'scroll-view': [{'bindscroll': ''}],
      \     'swiper': [{'autoplay': 'false', 'current': '0'}],
      \     'icon': [{'type': 'success', 'size': '23'}],
      \     'progress': [{'precent': '0'}],
      \     'button': [{'size': 'default'}],
      \     'checkbox-group': [{'bindchange': ''}],
      \     'checkbox': [{'value': '', 'checked': ''}],
      \     'form': [{'bindsubmit': ''}],
      \     'input': [{'type': 'text'}],
      \     'label': [{'for': ''}],
      \     'picker': [{'bindchange': ''}],
      \     'radio-group': [{'bindchange': ''}],
      \     'radio': [{'checked': ''}],
      \     'switch': [{'checked': ''}],
      \     'slider': [{'value': ''}],
      \     'action-sheet': [{'bindchange': ''}],
      \     'modal': [{'title': ''}],
      \     'loading': [{'bindchange': ''}],
      \     'toast': [{'duration': '1500'}],
      \     'audio': [{'src': ''}],
      \     'video': [{'src': ''}],
      \     'image': [{'src': '', 'mode': 'scaleToFill'}],
      \   }
      \ }
      \}

" GitGutter Setting
set updatetime=100
let g:gitgutter_sign_column_always = 0
let g:gitgutter_max_signs = 99999
" let g:gitgutter_override_sign_column_highlight = 1

" Ag.vim Settings
let g:ackprg = "ag --nocolor --nogroup --column"
set grepprg=ag\ --nogroup\ --nocolor
if(!has('nvim'))
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
endif

" Multip Cursor
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Vim incsearch
let g:vim_search_pulse_disable_auto_mappings = 1
let g:incsearch#auto_nohlsearch = 1

" Python snytax configure
let python_self_cls_highlight = 1

" 2 3 5 10
" ColorFul NERDTree Settings
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "·",
      \ "Staged"    : "*",
      \ "Untracked" : "+",
      \ "Renamed"   : ">",
      \ "Unmerged"  : "=",
      \ "Deleted"   : "-",
      \ "Dirty"     : "×",
      \ "Clean"     : "@",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" auto complete
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Command-T
" let g:CommandTAcceptSelectionMap = '<C-t>'
" let g:CommandTAcceptSelectionTabMap = '<CR>'

let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit,FAR,far_vim"
let g:lastplace_ignore_buftype = "quickfix,nofile,help,FAR,far_vim"
let g:lastplace_open_folds = 0

let g:better_whitespace_filetypes_blacklist = ['FAR', 'far_vim', 'diff', 'gitcommit', 'unite', 'qf', 'help', '.ignore', 'node_modules']

" anyFold
" let anyfold_activate=1
" let anyfold_fold_comments=1
" set foldlevel=0

" FastFold
" let g:tex_fold_enabled=1
" let g:vimsyn_folding='af'
" let g:xml_syntax_folding = 1
" let g:php_folding = 1
" let g:perl_fold = 1
" let g:javascript_fold = 1
" nmap zuz <Plug>(FastFoldUpdate)
" let g:fastfold_savehook = 1
" let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
" let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" ListToggle Plug
let g:lt_location_list_toggle_map = '<leader>w'
let g:lt_quickfix_list_toggle_map = '<leader>q'

"HandleBar syntax
let g:mustache_abbreviations = 1
let g:jsx_ext_required = 0
let g:tsuquyomi_disable_quickfix = 1

"Prettier
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1

let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:tagbar_jsctags_bin = '/usr/local/bin/jsctags'
let g:tagbar_iconchars = ['+', '-']

"Far.vim Mutilp Replace
let g:far#source = 'ag'
let g:far#auto_preview = 0

" " ag is fast enough that CtrlP doesn't need to cache
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:xml_syntax_folding = 1

" webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsOS = 'Darwin'

" scrooloose/nerdcommenter
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
" let g:NERDCompactSexyComs = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDAltDelims_java = 1
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1
" let g:NERDToggleCheckAllLines = 1

" vim-closetag
" let g:closetag_filetypes = 'html,xhtml,phtml,ax,vue,jsx,js,ts,tsx,cubec,handlebars,mustache'

" file type
if !exists('g:context_filetype#same_filetypes')
  let g:context_filetype#same_filetypes = {}
endif
let g:context_filetype#same_filetypes.html = 'css'
let g:context_filetype#same_filetypes.pug = 'html'
" let g:context_filetype#same_filetypes.css = 'html'
let g:context_filetype#same_filetypes.jsx = 'css'
let g:context_filetype#same_filetypes.js = 'css'
let g:context_filetype#same_filetypes.tsx = 'css'
let g:context_filetype#same_filetypes.ts = 'css'

" othree/javascript-libraries-syntax.vim
" let g:used_javascript_libs = 'jquery,handlebars,react,d3'

" Language Server Protocol (LSP)
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['tcp://127.0.0.1:2089'],
"     \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"     \ 'typescript': ['tcp://127.0.0.1:2089'],
"     \ 'typescript.jsx': ['tcp://127.0.0.1:2089'],
"     \ }
" let g:LanguageClient_diagnosticsDisplay = {
"       \ 1: {
"       \      "name": "Error",
"       \      "texthl": "ALEError",
"       \      "signText": "×",
"       \      "signTexthl": "ALEErrorSign",
"       \  },
"       \  2: {
"       \      "name": "Warning",
"       \      "texthl": "ALEWarning",
"       \      "signText": "⚠",
"       \      "signTexthl": "ALEWarningSign",
"       \  },
"       \  3: {
"       \      "name": "Information",
"       \      "texthl": "ALEInfo",
"       \      "signText": "·",
"       \      "signTexthl": "ALEInfoSign",
"       \  },
"       \  4: {
"       \      "name": "Hint",
"       \      "texthl": "ALEInfo",
"       \      "signText": ">",
"       \      "signTexthl": "ALEInfoSign",
"       \  },
"       \ }

" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
" nnoremap <silent> <leader>gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <leader>gr :call LanguageClient#textDocument_rename()<CR>

" ghost text document
" let g:ghost_darwin_app = "vimR"

" coc completer
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
let g:vim_jsx_pretty_colorful_config = 1 " default 0

"========================= Plugin Config End =========================
