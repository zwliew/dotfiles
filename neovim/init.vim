" Enable line numbers
setlocal nu

" Set indentation rules for file extensions
autocmd FileType cpp,c setlocal ts=2 sts=2 sw=2 expandtab

" Enable plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Status line with airline
Plug 'vim-airline/vim-airline'

call plug#end()
