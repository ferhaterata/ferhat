
" COC installed

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Show all diagnostics.
nmap <silent> ga :<C-u>CocList diagnostics<cr>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Remap for do codeAction of selected region
vmap <silent><leader>a <Plug>(coc-codeaction-selected)
nmap <silent><leader>a <Plug>(coc-codeaction-selected)
"<leader>aap for current paragraph
"<leader>aw for current word
" Do command from codeLens of current line.
nmap <silent><leader>l <Plug>(coc-codelens-action)
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Open explorer
nmap <silent><leader>e :CocCommand explorer<CR>

let s:coc_extensions = [
    \ 'coc-marketplace',
    \ 'coc-dictionary',
    \ 'coc-word',
    \ 'coc-tag',
    \ 'coc-vimtex',
    \ 'coc-java',
    \ 'coc-json',
    \ 'coc-ultisnips',
    \ 'coc-cmake',
    \ 'coc-xml',
    \ 'coc-texlab',
    "\ 'coc-spell-checker',
    \]

for extension in s:coc_extensions
  call coc#add_extension(extension)
endfor
