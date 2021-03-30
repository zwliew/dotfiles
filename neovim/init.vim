if !exists('g:vscode')

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

" Configure CoC
" Enable CoC extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-explorer', 'coc-prettier', 'coc-clangd', 'coc-pyright', 'coc-eslint']

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Configure CoC prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Configure space-e for CoC explorer
nmap <space>e :CocCommand explorer<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" Recently vim can merge signcolumn and number column into one
set signcolumn=number

" Other options
" Enable mouse scrolling
set mouse=a

" Enable line numbers
set number
set relativenumber

" Enable 24-bit colors
set termguicolors

" Enable airline status line (part 2)
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_highlighting_cache=1

" Enable onedark color scheme (part 2)
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1
colorscheme onedark

" Make all line numbers white
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

endif
