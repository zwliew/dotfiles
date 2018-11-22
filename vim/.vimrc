" Enable syntax highlighting
syntax enable

" Enable line numbers on a left margin
" nu = number
setlocal nu

" Highlight search results
setlocal hlsearch

" Configure indentation for various file types
" ts = tabstop (show existing tab with x spaces width)
" sts = softabstop (treat x spaces as a tab, like when deleting)
" sw = shiftwidth (when indenting with '>', use x spaces width)
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
