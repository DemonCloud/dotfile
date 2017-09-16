" ========================= Plugin Config Start =========================
" Set Ale Cheacker
let g:ale_sign_error = '-'
let g:ale_sign_warning = '*'
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:airline#extensions#ale#enabled = 0

" set termguicolors
let ayucolor="dark"   " for dark version of theme
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme

" AirLine Settings
let g:airline_powerline_fonts = 1
let g:airline_theme='serene'
" let g:airline_theme='fairyfloss'
" let g:airline_theme='zenburn'
" let g:airline_theme='simple'
" let g:airline_theme='jellybeans'

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_left_sep=''
let g:airline_right_sep=''

" fzf Setting
set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

"------------------ NeoComplete -------------------
" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
" This do disable full signature type on autocomplete
let g:tern_show_signature_in_pum = '0'  
"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]

if(!has('nvim'))
" Enable snipMate compatibility feature.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType tpl,html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType typescript,javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Plugin key-mappings.
imap <S-Tab> <Plug>(neosnippet_expand_or_jump)
smap <S-Tab> <Plug>(neosnippet_expand_or_jump)
xmap <S-Tab> <Plug>(neosnippet_expand_target)

inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent><CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ).(pumvisible() ? "" : "\<CR>")
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
endfunction

endif

"------------------ YouCompleteMe -------------------
" Linux vim && NeoVim Using YouCompleteMe
" let g:ycm_auto_trigger = 0
" let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_collect_identifiers_from_tags_files = 0
" let g:ycm_add_preview_to_completeopt = 5
" let g:ycm_use_ultisnips_completer = 0
" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'
" let g:ycm_cache_omnifunc = 1
" let g:ycm_max_diagnostics_to_display=0
" let g:ycm_key_list_select_completion = ['<C-n>', '<C-j>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<C-k>']
" let g:ycm_filetype_blacklist = {
" 			\ 'tagbar' : 1,
" 			\ 'qf' : 1,
" 			\ 'notes' : 1,
" 			\ 'markdown' : 1,
" 			\ 'unite' : 1,
" 			\ 'text' : 1,
" 			\ 'vimwiki' : 1,
" 			\ 'pandoc' : 1,
" 			\ 'infolog' : 1,
" 			\ 'mail' : 1,
" 			\ 'mundo': 1,
" 			\ 'fzf': 1,
" 			\ 'ctrlp' : 1
" 			\}

" let g:ycm_error_symbol = '>>'
" let g:ycm_warning_symbol = '>*'

" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Emmet Config
" change <Tab> config , if use [YouCompleteMe]
let g:user_emmet_expandabbr_key ='<Tab>'

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
			\ 'phtml'    : {
			\ 'extends' : 'html',
			\ }
			\}

" GitGutter Setting
let g:gitgutter_sign_column_always = 0
let g:gitgutter_max_signs = 99999

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

" ColorFul NERDTree Settings
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeDirArrows=0
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "o",
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
" let g:UltiSnipsExpandTrigger="<S-Tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Command-T
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_open_folds = 0

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

let g:jsx_ext_required = 0
" let g:xml_syntax_folding = 1
"========================= Plugin Config End =========================
