" Enable syntax highlighting
syntax enable

" Incrementally highlight search results
set hlsearch
set incsearch

" Enable auto and smart indentation
set autoindent
set smartindent

" Enable ruler
set ruler

" Improve searches. Case insensitive unless the search query is multicase.
set ignorecase
set smartcase

" Enable mouse scrolling
set mouse=a

" Enable (relative) line numbers
set number
set relativenumber

" Enable 24-bit colors
set termguicolors

" Configure indentation for various file types
" ts = tabstop (show existing tab with x spaces width)
" sts = softabstop (treat x spaces as a tab, like when deleting)
" sw = shiftwidth (when indenting with '>', use x spaces width)
autocmd FileType python set ts=4 sts=4 sw=4 expandtab
autocmd FileType java,json,eruby,scss,javascript,html,css,cpp,c,ruby set ts=2 sts=2 sw=2 expandtab

" vim-rainbow
let g:rainbow_active = 1

" gruvbox color scheme
let g:gruvbox_italic=1
colorscheme gruvbox
set bg=dark
