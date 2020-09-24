" Enable line numbers
setlocal nu

" Set indentation rules for file extensions
autocmd FileType cpp,c setlocal ts=2 sts=2 sw=2 expandtab

" Enable plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Enable airline status line
Plug 'vim-airline/vim-airline'

" Enable onedark color scheme (part 1)
Plug 'joshdick/onedark.vim'

" Enable polyglot syntax highlighting and indentation
Plug 'sheerun/vim-polyglot'

call plug#end()

" Enable 24-bit colors
setlocal termguicolors

" Enable onedark color scheme (part 2)
colorscheme onedark
