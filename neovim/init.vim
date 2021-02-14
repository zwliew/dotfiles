if !exists('g:vscode')

" Enable CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-explorer', 'coc-prettier', 'coc-clangd', 'coc-python']

" Configure space-e for CoC explorer
nmap <space>e :CocCommand explorer<CR>

" Configure CoC prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Configure CoC
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Enable mouse scrolling
set mouse=a

" Enable line numbers
set nu

" Set indentation rules for file extensions
autocmd FileType cpp,c set ts=2 sts=2 sw=2 expandtab

" Enable plugins with vim-plug
call plug#begin(stdpath('data') . '/plugged')

" Enable airline status line (part 1)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Enable onedark color scheme (part 1)
Plug 'joshdick/onedark.vim'

" Enable polyglot syntax highlighting and indentation
Plug 'sheerun/vim-polyglot'

" Enable coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Enable 24-bit colors
set tgc

" Enable airline status line (part 2)
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_highlighting_cache=1

" Enable onedark color scheme (part 2)
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1
colorscheme onedark

endif
