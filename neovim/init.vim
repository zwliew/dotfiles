if !exists('g:vscode')

" Enable CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-explorer', 'coc-prettier']

" Configure space-e for CoC explorer
nmap <space>e :CocCommand explorer<CR>

" Configure CoC prettier
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Configure CoC commands
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Enable line numbers
setlocal nu

" Set indentation rules for file extensions
autocmd FileType cpp,c setlocal ts=2 sts=2 sw=2 expandtab

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
setlocal tgc

" Enable airline status line (part 2)
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_highlighting_cache=1

" Enable onedark color scheme (part 2)
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1
colorscheme onedark

endif
