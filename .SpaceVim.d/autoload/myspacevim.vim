function! myspacevim#before() abort
	set ignorecase
	set smartcase

	let g:github_dashboard = { 'username': 'ferhaterata', 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = 'ferhaterata'
  call SpaceVim#custom#SPC('nore', ['b', 'i'], 'ToggleBufExplorer', 'Opens/Closes BufExplorer', 1)
  call SpaceVim#custom#SPC('nore', ['[SPC]'], 'ToggleBufExplorer', 'Opens/Closes BufExplorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'v'], 'BufExplorerVerticalSplit', 'Opens horizontal BufExplorer', 1)
  call SpaceVim#custom#SPC('nore', ['b', 'h'], 'BufExplorerHorizontalSplit', 'Opens vertical BufExplorer', 1)
endfunction

function! myspacevim#after() abort
endfunction
