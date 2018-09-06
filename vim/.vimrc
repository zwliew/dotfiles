" Dein.vim plugin manager
if &compatible
 set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('leafgarland/typescript-vim')
 call dein#add('mattn/emmet-vim')
 call dein#add('posva/vim-vue')
 call dein#add('iloginow/vim-stylus')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Enable emmet-vim only on HTML/CSS files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Set custom indentation behaviour for specific filetypes
autocmd FileType javascript,typescript,html,css setlocal ts=2 sw=2 sts=2 expandtab

" Disable preprocessor checking for vim-vue
"let g:vue_disable_pre_processors=1
