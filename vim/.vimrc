if &compatible
 set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('leafgarland/typescript-vim')
 call dein#add('mattn/emmet-vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable
