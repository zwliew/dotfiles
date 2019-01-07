" Enable syntax highlighting
syntax enable

" Enable line numbers on a left margin
" nu = number
setlocal nu

" Highlight search results
setlocal hlsearch

" Enable auto indentation
setlocal ai

" Enable smart indentation
setlocal si

" netrw configs
let g:netrw_liststyle = 3 " Tree-style directory listing
let g:netrw_banner = 0 " Suppress the banner
let g:netrw_browse_split = 4 " Open previous window when opening file
let g:netrw_winsize = 25 " Set window width to 25% of page

" Configure indentation for various file types
" ts = tabstop (show existing tab with x spaces width)
" sts = softabstop (treat x spaces as a tab, like when deleting)
" sw = shiftwidth (when indenting with '>', use x spaces width)
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
autocmd FileType javascript,html,css,cpp,c,ruby setlocal ts=2 sts=2 sw=2 expandtab
