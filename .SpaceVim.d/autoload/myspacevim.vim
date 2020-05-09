function! myspacevim#before() abort
	set ignorecase
	set smartcase

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
  call SpaceVim#custom#SPC('nore', ['[SPC]'], 'Leaderf file --fullPath '
        \ . SpaceVim#plugins#projectmanager#current_root() . " --popup" , 'find files in current project', 1)
  call SpaceVim#custom#SPC('nore', ['f', 'r'], 'Leaderf mru' , 'open recent files', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'b'], 'Leaderf buffer --popup ' , 'buffer list', 1)
  if has('nvim') 
     call SpaceVim#custom#SPC('nore', ['a', 't'], 'call myspacevim#openterminal()', 'open-shell', 1)
  endif
  
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

  " to override a bug in spacevim
  function! StartifyEntryFormat()
      return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
  endfunction 

  set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

endfunction

function! myspacevim#after() abort

  nnoremap <c-p> :FZF<cr>

  augroup leaderf
    "let g:Lf_WindowPosition = 'popup'
    highlight Lf_hl_popup_inputText guifg=#ddc7a1 guibg=#1d2021 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
    highlight Lf_hl_popup_window guifg=#ddc7a1 guibg=#1d2021 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
    let g:Lf_CommandMap = {'<c-j>': ['<tab>', '<c-j>'], '<c-k>': ['<s-tab>','<c-k>']}
    let g:Lf_PreviewInPopup = 1
    let g:Lf_PopupColorscheme = 'default'
    let g:colors_name = 'gruvbox_material'
  augroup END

  "set cmdheight=1    " Better display for messages
  set showmode 
  set updatetime=1000 " Update sign column every quarter second
  set clipboard=unnamedplus

  let g:gitgutter_max_signs = 99999
  "let g:gitgutter_sign_modified_removed = '≃'
  "highlight clear SignColumn  " SignColumn should match background
  "hi! link GitGutterAdd GruvboxGreenSign
  "hi! GitGutterAdd ctermfg=142 ctermbg=237 guifg=#b8bb26 guibg=#1d2021
  "hi! link GitGutterChange GruvboxAquaSign
  "hi! GitGutterChange ctermfg=108 ctermbg=237 guifg=#8ec07c guibg=#1d2021
  "hi! link GitGutterDelete GruvboxRedSign
  "hi! GitGutterDelete ctermfg=167 ctermbg=237 guifg=#fb4934 guibg=#1d2021
  "hi! link GitGutterChangeDelete GruvboxAquaSign
  "hi! GitGutterChangeDelete ctermfg=108 ctermbg=237 guifg=#8ec07c guibg=#1d2021

  nmap gp <Plug>(GitGutterPreviewHunk)
  nmap gs <Plug>(GitGutterStageHunk)
  nmap gu <Plug>(GitGutterUndoHunk)

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
    \ "Untracked" : "ﰣ", 
    \ "Renamed"   : "",
    \ "Unmerged"  : "",
    \ "Deleted"   : "",
    \ 'Dirty'     : "",
    \ "Clean"     : "",
    \ "Unknown"   : "?", 
    \ 'Ignored'   : ""
    \ }

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
    \ 'Staged'    : '',
    \ 'Untracked' : 'ᵁ',
    \ 'Renamed'   : '',
    \ 'Unmerged'  : '≠',
    \ 'Ignored'   : 'ⁱ',
    \ 'Deleted'   : '',
    \ 'Unknown'   : '?'
    \ }

  nnoremap <silent>- :Defx `expand('%:p:h')` -auto-recursive-level=1 -split=no -show-ignored-files -search=`expand('%:p')` -new<CR>

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
  let g:EasyMotion_smartcase = 1
   " type `l` and match `l`&`L`
  let g:EasyMotion_smartcase = 1
  " Smartsign (type `3` and match `3`&`#`)
  let g:EasyMotion_use_smartsign_us = 1
  " Gif config
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)

  " Use <C-L> to clear the highlighting of :set hlsearch.
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
  endif

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

