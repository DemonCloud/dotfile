" ========================= Plugin Config Start =========================

" AirLine
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#branch#enabled = 0
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
" let g:airline_theme = "zenburn"
let g:airline_theme = "ayu_mirage"

" use Aix.font
if(has("gui_running"))
  let g:airline_left_sep='◣'
  let g:airline_right_sep='◥'
else
  let g:airline_left_sep=''
  let g:airline_right_sep=''
endif

" Set Ale Cheacker
let g:ale_sign_error = '×'
let g:ale_sign_warning = '*'
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\   'html': ['htmlhint'],
			\   'css': ['stylelint'],
			\   'md': ['mdl'],
			\   'markdown': ['mdl'],
			\   'sass' : ['scss_lint'],
			\   'scss' : ['scss_lint'],
			\}
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

function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete = 0
endfunction


"------------------ YouCompleteMe -------------------
" Linux vim && NeoVim Using YouCompleteMe
" let g:ycm_auto_trigger = 0
" let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_collect_identifiers_from_tags_files = 10
" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_use_ultisnips_completer = 0
" let g:ycm_cache_omnifunc = 1
" let g:ycm_min_num_of_chars_for_completion = 99999
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
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
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
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

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
" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_ctrlp = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsOS = 'Darwin'

"========================= Plugin Config End =========================
