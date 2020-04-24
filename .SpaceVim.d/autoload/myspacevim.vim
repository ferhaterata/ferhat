function! myspacevim#before() abort
	set ignorecase
	set smartcase

	let g:github_dashboard = { 'username': 'ferhaterata', 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = 'ferhaterata'

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
  nnoremap <silent> <F7> :MundoToggle<CR>
  nnoremap <silent> U :MundoToggle<CR>
  " 
  let g:netrw_browsex_viewer="xdg-open"

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

endfunction

function! myspacevim#after() abort
  let g:Lf_CommandMap = {'<c-j>': ['<tab>', '<c-j>'], '<c-k>': ['<s-tab>','<c-k>']}
  nnoremap <c-p> :FZF<cr>
  set showmode 
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

