function! myspacevim#before() abort
	set ignorecase
	set smartcase

	let g:github_dashboard = { 'username': 'ferhaterata', 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = 'ferhaterata'
  "https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/layers/core.vim
  call SpaceVim#custom#SPC('nore', ['a', 'u'], 'MundoToggle', 'toggle undo tree', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'i'], 'ToggleBufExplorer', 'toggle buffer explorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'v'], 'BufExplorerVerticalSplit', 'open horizontal BufExplorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'h'], 'BufExplorerHorizontalSplit', 'open vertical BufExplorer', 1)

  " bookmark key binding
  nnoremap <silent> mm :<C-u>BookmarkToggle<Cr>
  nnoremap <silent> mi :<C-u>BookmarkAnnotate<Cr>
  nnoremap <silent> ma :<C-u>BookmarkShowAll<Cr>
  nnoremap <silent> mn :<C-u>BookmarkNext<Cr>
  nnoremap <silent> mp :<C-u>BookmarkPrev<Cr>
  " 
  nmap <silent> gc <Plug>NERDCommenterInvert
  xmap <silent> gc <Plug>NERDCommenterInvert
  " 
  nnoremap <silent> <F7> :MundoToggle<CR>
  nnoremap <silent> U :MundoToggle<CR>
 
  let g:gruvbox_contrast_dark = "hard" "medium
  let g:netrw_browsex_viewer="xdg-open"

  " i guess I added this because of a spacevim error
  let g:airline#extensions#bookmark#enabled = 0  
  let g:bufferline_echo = 0 

  " Activation based on file type
  augroup rainbow_lisp
    autocmd!
    autocmd FileType lisp,clojure,scheme,racket,java RainbowParentheses
  augroup END

  let g:rainbow#max_level = 16
  let g:rainbow#pairs = [['(', ')'], ['[', ']'],['{','}']]
  " List of colors that you do not want. ANSI code or #RRGGBB
  let g:rainbow#blacklist = [233, 234]

  let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   My most recently used files in the current directory: '. getcwd()] },
        \ { 'type': 'files',     'header': ['   My most recently used files:']            },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ] 

  augroup leaderf 
    let g:Lf_WindowPosition = 'popup'
    let g:Lf_PreviewInPopup = 1
    call SpaceVim#custom#SPC('nore', ['[SPC]'], 'Leaderf file --fullPath '
        \ . SpaceVim#plugins#projectmanager#current_root(), 'find files in current project', 1)
  augroup END

  if has('nvim') 
     call SpaceVim#custom#SPC('nore', ['a', 't'], 'call myspacevim#openterminal()', 'open-shell', 1)
  endif

  " to override a bug in spacevim
  function! StartifyEntryFormat()
      return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
  endfunction 

  "let g:gitgutter_sign_modified_removed = '≃'
  let g:gitgutter_override_sign_column_highlight = 1
  highlight clear SignColumn  " SignColumn should match background
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶

endfunction

function! myspacevim#after() abort

  let g:Lf_CommandMap = {'<c-j>': ['<tab>', '<c-j>'], '<c-k>': ['<s-tab>','<c-k>']}
  nnoremap <c-p> :FZF<cr>

  set cmdheight=1    " Better display for messages
  set showmode 
  set updatetime=1000 " Update sign column every quarter second
  let g:gitgutter_max_signs = 99999

  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeDirArrows=0
  
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
  
  "Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
  "let g:NERDTreeFileExtensionHighlightFullName = 1
  "let g:NERDTreeExactMatchHighlightFullName = 1
  "let g:NERDTreePatternMatchHighlightFullName = 1 
  "let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match 
  "let g:NERDTreeHighlightFoldersFullNamDCommenterInvertus the folder name
  "let g:NERDTreeLimitedSyntax = 1

  " NERDTress File highlighting
  function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction

  au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  au VimEnter * call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  au VimEnter * call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  au VimEnter * call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
  au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

  hi! link NERDTreeFlags Comment
  hi! link NERDTreeDir Identifier  

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
  "nnoremap <C-I> :normal <C-I><CR>   
  "call SpaceVim#mapping#space#def('nnoremap', ['j', 'b'], '<C-o>', 'jump-backward', 0)
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



  " Use <C-L> to clear the highlighting of :set hlsearch.
  if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
  endif
  
  "autocmd VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  "exec 'hi def link '.folder_icon_identifier. s:darkBlue 
  
autocmd filetype nerdtree highlight haskell_icon ctermbg=none ctermfg=Red guifg=#ffa500
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

