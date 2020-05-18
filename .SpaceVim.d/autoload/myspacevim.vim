function! myspacevim#before() abort
	set ignorecase
	set smartcase

  if !has('nvim')
    set ttymouse=xterm2
  endif 
  set mouse=a

  set ttimeoutlen=10 "Terminus changes this to 10ms
  " in insert mode completion blinks in vim and konsole
  " let &t_SI = "\<Esc>[6 q"
  " let &t_SR = "\<Esc>[4 q"
  " let &t_EI = "\<Esc>[2 q"

" | Shortcuts        | Description                                                     |
" | ---------------- | --------------------------------------------------------------- |
" | Basic            |                                                                 |
" | `F2`             | Open tagbar                                                     |
" | `<Leader> [1-9]` | switch to different tabs or buffers                             |
" | `spc [1-9]`      | switch to different windows                                     |
" | `ctrl j/h/k/l`   | switch to different windows                                     |
" | Filetree         | [Link](https://spacevim.org/documentation/#file-tree)           |
" | `<F3> / spc f t` | trigger file tree                                               |
" | `spc f o`        | open file tree and locate to current directory                  |
" | `s g`            | open file and split window horizontally                         |
" | `s v`            | open file split window vertically                               |
" | Comment code     | [Link](https://spacevim.org/documentation/#commenting)          |
" | `spc c l`        | comment/uncomment current line                                  |
" | `spc c p/P`      | comment/uncomment current paragraph                             |
" | `spc ; [num] j`  | comment *num* lines                                             |
" | Tab Manager      | [Link](https://spacevim.org/documentation/#tabline)             |
" | `spc t t`        | open tab manager                                                |
" | `spc w F`        | open a new tab, equal to `spc t t + n`                          |
" | `spc w o`        | switch tab                                                      |
" | Display          | [Link](https://spacevim.org/documentation/#ui-toggles)          |
" | `spc s c`        | clear search highlight                                          |
" | `SPC t 8`        | highlight any character past the 80th column                    |
" | `SPC t h h`      | toggle highlight of the current line                            |
" | `SPC t h c`      | toggle highlight indentation current column                     |
" | Search           | [Link](https://spacevim.org/documentation/#searching)           |
" | `spc s s`        | Searching in current file                                       |
" | `spc s d`        | Searching in current directory                                  |
" | `spc s b`        | Searching in all loaded buffers                                 |
" | `spc s p`        | Searching in current proj, equal to `spc /`                     |
" | Useful shortcuts | [Link](https://spacevim.org/documentation/#unimpaired-bindings) |
" | `[ spc`          | insert space above                                              |
" | `] spc`          | insert space below                                              |
" | `g p`            | select pasted text                                              |
"
" https://github.com/mg979/vim-visual-multi
" let g:VM_leader = '\'
" Exit                  <Esc>       quit VM
" Find Under            <C-n>       select the word under cursor
" Find Subword Under    <C-n>       from visual mode, without word boundaries
" Add Cursor Down       <C-Down>    create cursors vertically
" Add Cursor Up         <C-Up>      ,,       ,,      ,,
" Select All            \\A         select all occurrences of a word
" Start Regex Search    \\/         create a selection with regex search
" Add Cursor At Pos     \\\         add a single cursor at current position
" Reselect Last         \\gS        reselect set of regions of last VM session
  let g:VM_mouse_mappings = 1
" Mouse Cursor    <C-LeftMouse>     create a cursor where clicked
" Mouse Word      <C-RightMouse>    select a word where clicked
" Mouse Column    <M-C-RightMouse>  create a column, from current cursor to
"                                   clicked position
"
" Find Next               n         find next occurrence
" Find Prev               N         find previous occurrence
" Goto Next               ]         go to next selected region
" Goto Prev               [         go to previous selected region
" Seek Next             <C-f>       fast go to next (from next page)
" Seek Prev             <C-b>       fast go to previous (from previous page)
" Skip Region             q         skip and find to next
" Remove Region           Q         remove region under cursor
"

	let g:github_dashboard = { 'username': 'ferhaterata', 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = 'ferhaterata'
  "https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/layers/core.vim
  call SpaceVim#custom#SPC('nore', ['a', 'u'], 'MundoToggle', 'toggle undo tree', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'i'], 'ToggleBufExplorer', 'toggle buffer explorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'v'], 'BufExplorerVerticalSplit', 'open horizontal BufExplorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'h'], 'BufExplorerHorizontalSplit', 'open vertical BufExplorer', 1)
  " --popup-height=0.75
  call SpaceVim#custom#SPC('nore', ['[SPC]'], 'Leaderf file --fullPath '
        \ . SpaceVim#plugins#projectmanager#current_root() . " --popup " , 'find files in current project', 1)
  call SpaceVim#custom#SPC('nore', ['f', 'r'], 'Leaderf mru --popup' , 'open recent files', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'b'], 'Leaderf buffer --popup ' , 'buffer list', 1)
  if has('nvim')
     call SpaceVim#custom#SPC('nore', ['a', 't'], 'call myspacevim#openterminal()', 'open-shell', 1)
  endif
  call SpaceVim#custom#SPC('nnore', ['f', 'b'], 'SignatureListBufferMark', 'list bookmarks (signature)', 1)
  " Floaterm
  call SpaceVim#custom#SPCGroupName(['o'], '+open')
  call SpaceVim#custom#SPC('nore', ['o', 't'], 'FloatermToggle', 'toggle the floating terminal', 1)
  call SpaceVim#custom#SPC('nore', ['o', 'v'], 'FloatermNew vifm', 'open floatin vifm file manager', 1)
  call SpaceVim#custom#SPC('nore', ['o', 'V'], 'Vifm', 'open vifm file manager', 1)
  " cocexplorer
  call SpaceVim#custom#SPC('nore', ['o', 'e'], 'CocCommand explorer', 'toggle the coc file explorer', 1)
  call SpaceVim#custom#SPC('nore', ['o', 'f'], 'CocCommand explorer --preset floating', 'toggle the coc floating explorer', 1)
  call SpaceVim#custom#SPC('nore', ['o', 'l'], 'CocList explPresets', 'toggle the coc floating explorer', 1)

  " bookmark key binding
  " nnoremap <silent> mm :<C-u>BookmarkToggle<Cr>
  " nnoremap <silent> mi :<C-u>BookmarkAnnotate<Cr>
  " nnoremap <silent> ma :<C-u>BookmarkShowAll<Cr>
  " nnoremap <silent> mn :<C-u>BookmarkNext<Cr>
  " nnoremap <silent> mp :<C-u>BookmarkPrev<Cr>

  " vim-signature
  let g:SignatureMap = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "m,",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "m-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "m<Space>",
    \ 'PurgeMarkers'       :  "m<BS>",
    \ 'GotoNextLineAlpha'  :  "']",
    \ 'GotoPrevLineAlpha'  :  "'[",
    \ 'GotoNextSpotAlpha'  :  "`]",
    \ 'GotoPrevSpotAlpha'  :  "`[",
    \ 'GotoNextLineByPos'  :  "]'",
    \ 'GotoPrevLineByPos'  :  "['",
    \ 'GotoNextSpotByPos'  :  "]`",
    \ 'GotoPrevSpotByPos'  :  "[`",
    \ 'GotoNextMarker'     :  "]-",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ 'ListBufferMarks'    :  "m/",
    \ 'ListBufferMarkers'  :  "m?"
    \ }

  " NERDCommenter
  nmap <silent> gc <Plug>NERDCommenterInvert
  xmap <silent> gc <Plug>NERDCommenterInvert
  " Mundo
  nnoremap <silent> <F7> :MundoToggle<CR>
  nnoremap <silent> U :MundoToggle<CR>
  " Gruvbox config
  let g:gruvbox_contrast_dark = "hard" "medium
  let g:gruvbox_sign_column = "bg0"
  " netrw config
  let g:netrw_browsex_viewer="xdg-open"

  " rainbow
  " Activation based on file type
  augroup rainbow_lisp
    autocmd!
    autocmd FileType lisp,clojure,scheme,racket,java RainbowParentheses
  augroup END
  let g:rainbow#max_level = 16
  let g:rainbow#pairs = [['(', ')'], ['[', ']'],['{','}']]
  " List of colors that you do not want. ANSI code or #RRGGBB
  let g:rainbow#blacklist = [233, 234]

  " startify
  let g:startify_lists = [
    \ { 'type': 'dir',       'header': ['   My most recently used files in the current directory: '. getcwd()] },
    \ { 'type': 'files',     'header': ['   My most recently used files:']            },
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
    \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
    \ { 'type': 'commands',  'header': ['   Commands']       },
    \ ]

  let g:startify_bookmarks = [ {'i': '~/.init.toml'},  {'b': '~/.bashrc'}  ]

  " to override a bug in spacevim
  function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
  endfunction

  " Floaterm
  let g:floaterm_gitcommit='floaterm'
  let g:floaterm_autoinsert=1
  let g:floaterm_width=0.8
  let g:floaterm_height=0.8
  let g:floaterm_wintitle=0
  let g:floaterm_autoclose=2
  "let g:floaterm_keymap_new = '<Leader>tn'
  let g:floaterm_keymap_toggle = '<space>ot'
  "let g:floaterm_keymap_prev = '<Leader>tp'
  "let g:floaterm_keymap_next = '<Leader>tn'
  let g:floaterm_keymap_toggle = '<Leader>tn'
  let g:floaterm_keymap_kill = '<Leader>tk'

  " fzf-preview
  " Use vim-devicons
  let g:fzf_preview_use_dev_icons = 1
  " devicons character width
  let g:fzf_preview_dev_icon_prefix_length = 0
  " FzfPreviewBuffers
  " FzfPreviewProjectFiles

  " vim-illuminate
  " Time in milliseconds (default 250)
  let g:Illuminate_delay = 250
  " Don't highlight word under cursor (default: 1)
  let g:Illuminate_highlightUnderCursor = 0
  " let g:Illuminate_ftHighlightGroups = {
    " \ 'vim:blacklist': ['vimVar', 'vimString', 'vimLineComment',
    " \         'vimFuncName', 'vimFunction', 'vimUserFunc', 'vimFunc']
    " \ }
  let g:Illuminate_ftblacklist = ['nerdtree']
  let g:Illuminate_ftwhitelist = ['vim', 'sh', 'python', 'tmux', 'markdown', 'text', 'tex']

  "vifm
  let g:vifm_replace_netrw=true
  let g:vifm_replace_netrw_cmd = true
  " netrw
	let g:loaded_netrw       = 1
	let g:loaded_netrwPlugin = 1


endfunction

function! myspacevim#after() abort

  nnoremap <expr><silent>q (&filetype == "floaterm") ? ":FloatermKill<CR>" : ":<C-U>call SpaceVim#mapping#SmartClose()<CR>"

  set showmode
  set updatetime=1000 " Update sign column every quarter second
  set clipboard=unnamedplus

  "https://github.com/Shougo/echodoc.vim
  set cmdheight=1    " Better display for messages
  let g:echodoc#enable_at_startup = 1
  " To use a custom highlight for the popup window,
  " change Pmenu to your highlight group
  highlight link EchoDocPopup Pmenu

  let g:echodoc#type = 'popup'
  if has('nvim')
    "neovim's floating text feature.
    let g:echodoc#type = 'floating'
    "let g:echodoc#type = 'virtual'
  endif

  let g:gitgutter_max_signs = 99999
  let g:gitgutter_preview_win_floating = 1
  let g:gitgutter_diff_args = '-w'

  nmap gp <Plug>(GitGutterPreviewHunk)
  nmap gs <Plug>(GitGutterStageHunk)
  nmap gu <Plug>(GitGutterUndoHunk)
  nmap [c <Plug>(GitGutterPrevHunk)
  nmap ]c <Plug>(GitGutterNextHunk)

  nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
  nmap <Leader>hs <Plug>(GitGutterStageHunk)
  nmap <Leader>hu <Plug>(GitGutterUndoHunk)

  let g:NERDTreeMinimalUI=1
  let g:NERDTreeDirArrows=0
  let g:NERDTreeRespectWildIgnore=1

  let g:NERDTreeGitStatusWithFlags = 1
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeHijackNetrw = 0 "will not open up a window level NERDTree instead of a netrw in the target window."
  let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "",
    \ "Staged"    : "",
    \ "Renamed"   : "",
    \ "Unmerged"  : "",
    \ "Deleted"   : "",
    \ "Dirty"     : "",
    \ "Clean"     : "",
    \ "Unknown"   : "?",
    \ "Untracked" : "ﰣ",
    \ "Ignored"   : ""
    \ }
  " ﰂ ﯰ 

  let g:webdevicons_conceal_nerdtree_brackets = 1
  let g:webdevicons_enable_nerdtree = 1
  let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
  " enable folder/directory glyph flag (disabled by default with 0)
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  " enable open and close folder/directory glyph flags (disabled by default with 0)
  let g:DevIconsEnableFoldersOpenClose = 1

  hi! link NERDTreeFlags Comment
  hi! link NERDTreeDir Identifier

  hi link DefxIconsMarkIcon Statement
  hi link DefxIconsCopyIcon WarningMsg
  hi link DefxIconsMoveIcon ErrorMsg
  hi link DefxIconsDirectory Identifier
  hi link DefxIconsParentDirectory Identifier
  hi link DefxIconsSymlinkDirectory Identifier
  hi link DefxIconsOpenedTreeIcon Identifier
  hi link DefxIconsNestedTreeIcon Identifier
  hi link DefxIconsClosedTreeIcon Identifier

  let g:defx_git#indicators = {
    \ 'Modified'  : '•',
    \ 'Staged'    : '',
    \ 'Untracked' : 'ᵁ',
    \ 'Renamed'   : '',
    \ 'Unmerged'  : '≠',
    \ 'Ignored'   : 'ⁱ',
    \ 'Deleted'   : '',
    \ 'Unknown'   : '?'
    \ }

  "Defx
  nnoremap <silent>- :Defx `expand('%:p:h')` -split=no -show-ignored-files -search=`expand('%:p')` -new<CR>

  augroup defx_my_init
    au!
    autocmd FileType defx call s:defx_my_setting()
  augroup END

	function! s:defx_my_setting() abort
    silent! nunmap <buffer> -
	  nnoremap <silent><buffer><expr>- defx#do_action('cd', ['..'])
  endfunction

  " Make Y yank the rest of the line, as you would expect it to
  nnoremap Y y$
  " Move to the start of line
  nnoremap H ^
  " Move to the end of line
  nnoremap L $
  " Bash like
  inoremap <C-a> <Home>
  inoremap <C-e> <End>
  inoremap <C-d> <Delete>

  "nnoremap <silent> <Tab> :normal %<CR>
  "xnoremap <silent> <Tab> :normal %<CR>m`gv``
  "nnoremap <C-O> :normal <C-O><CR>
  "
  " g; older position on the change list
  " g, new position on the change list
  " g' jump to mark

  "https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim.vim#L1172
  nnoremap <C-I> <C-I>

  "call SpaceVim#mapping#space#def('nnoremap', ['j', 'b'], '<C-o>', 'jump-backward', 1)
  "call SpaceVim#mapping#space#def('nnoremap', ['j', 'f'], '<C-i>', 'jump-forward', 0)

  " to override a bug in spacevim
  " https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/layers/incsearch.vim
  "nnoremap <silent> n n:AirlineRefresh<CR>
  "nnoremap <silent> <S-n> <S-n>:AirlineRefresh<CR>
  " https://github.com/haya14busa/incsearch.vim
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)
  " :h g:incsearch#auto_nohlsearch
  set hlsearch
  let g:incsearch#auto_nohlsearch = 1
  map n  <Plug>(incsearch-nohl-n)
  map N  <Plug>(incsearch-nohl-N)
  map *  <Plug>(incsearch-nohl-*)
  map #  <Plug>(incsearch-nohl-#)
  map g* <Plug>(incsearch-nohl-g*)
  map g# <Plug>(incsearch-nohl-g#)

  " https://github.com/haya14busa/incsearch-fuzzy.vim
  function! s:config_fuzzyall(...) abort
    return extend(copy({
    \   'converters': [
    \     incsearch#config#fuzzy#converter(),
    \     incsearch#config#fuzzyspell#converter()
    \   ],
    \ }), get(a:, 1, {}))
  endfunction
  noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
  noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
  noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

  " https://github.com/haya14busa/incsearch-easymotion.vim
  function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzy#converter()],
    \   'modules': [incsearch#config#easymotion#module()],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
  endfunction
  noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

  " Jump to anywhere you want with minimal keystrokes, with just one key binding.
  " `s{char}{label}`
  " nmap s <Plug>(easymotion-overwin-f)
  " or
  " `s{char}{char}{label}`
  " Need one more keystroke, but on average, it may be more comfortable.
  nmap s <Plug>(easymotion-overwin-f2)
  " Turn on case-insensitive feature
   " type `l` and match `l`&`L`
  let g:EasyMotion_smartcase = 1
  " Smartsign (type `3` and match `3`&`#`)
  let g:EasyMotion_use_smartsign_us = 1
  " Gif config
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)

  let g:vimtex_view_general_viewer = 'okular'
  let g:vimtex_view_automatic = 1
  let g:vimtex_quickfix_open_on_warning = 1
  let g:airline#extensions#vimtex#enabled = 1

  let airline#extensions#tmuxline#snapshot_file = "~/.tmux-line.conf"

  " Use <C-L> to clear the highlighting of :set hlsearch.
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
  endif

  if has('nvim')
    if g:spacevim_colorscheme ==# 'gruvbox'
      "highlight! link Pmenu SignColumn
      highlight! Pmenu guibg=#282828 guifg=#ebdbb2
    endif
  endif

  "let g:markdown_enable_spell_checking = 1
  "let g:markdown_enable_conceal = 1

  augroup enable_spell_wrap
    autocmd!
    autocmd FileType latex,tex,md,markdown setlocal spell wrap!
  augroup END

  nnoremap <expr> j v:count ? 'j' : 'gj'
  nnoremap <expr> k v:count ? 'k' : 'gk'


  " This is the default extra key bindings
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }
  let g:fzf_buffers_jump = 1
  " Customize fzf colors to match your color scheme
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Special'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

  nnoremap <c-p> :Files<cr>
  if has('nvim')
    nnoremap <c-p> :FzfPreviewProjectFiles<cr>
  endif

  " https://github.com/junegunn/fzf.vim/issues/544
  tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
  nnoremap <leader>g :Rg<CR>
  " popup
  if exists('$TMUX')
    let g:fzf_layout = { 'tmux': '-p90%,90%' }
  else
    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
  endif
  " Always enable preview window on the right with 60% width
  let g:fzf_preview_window = 'right:60%'
  " Rg command
  command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

  augroup leaderf
    "let g:Lf_WindowPosition = 'popup'
    "if g:spacevim_colorscheme ==# 'gruvbox'
      "highlight Lf_hl_popup_inputText guifg=#ddc7a1 guibg=#1d2021 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
      "highlight Lf_hl_popup_window guifg=#ddc7a1 guibg=#1d2021 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
      highlight! link Lf_hl_popup_inputText SignColumn
      highlight! link Lf_hl_popup_window SignColumn
    "endif
    let g:Lf_CommandMap = {'<c-j>': ['<tab>', '<c-j>'], '<c-k>': ['<s-tab>','<c-k>']}
    let g:Lf_PreviewInPopup = 1
    let g:Lf_PopupColorscheme = 'default'
    let g:colors_name = 'gruvbox_material'
  augroup END

  let g:clang_library_path='/usr/lib/llvm-6.0/lib/' 

  call add(g:indentLine_fileTypeExclude, 'coc-explorer')

  let g:markdown_fenced_languages = ['css', 'js=javascript']

  " coc.nvim uses jsonc as configuration file format, the same as VSCode
  " To get correct comment highlighting
  autocmd FileType json syntax match Comment +\/\/.\+$+

  " horizontal, vertical, tab
  let g:tldr_split_type = 'horizontal'

endfunction

function! myspacevim#openterminal() abort
  if has('nvim') || exists(':tnoremap') == 2
    exe 'tnoremap <silent><C-Right> <C-\><C-n>:<C-u>wincmd l<CR>'
    exe 'tnoremap <silent><C-Left>  <C-\><C-n>:<C-u>wincmd h<CR>'
    exe 'tnoremap <silent><C-Up>    <C-\><C-n>:<C-u>wincmd k<CR>'
    exe 'tnoremap <silent><C-Down>  <C-\><C-n>:<C-u>wincmd j<CR>'
    exe 'tnoremap <silent><M-Left>  <C-\><C-n>:<C-u>bprev<CR>'
    exe 'tnoremap <silent><M-Right>  <C-\><C-n>:<C-u>bnext<CR>'
    exe 'tnoremap <silent><esc>     <C-\><C-n>'
    exe 'edit term://bash'
  endif
  " in window gvim, use <C-d> to close terminal buffer
endfunction

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

