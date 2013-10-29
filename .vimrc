set autoindent
set background=dark
set ignorecase
set laststatus=2
set mouse=a
set number
set smartcase
set ruler
set nostartofline
set cmdheight=2

colorscheme desert
syntax on
filetype indent plugin on

" vim-pad 
let g:pad_dir = '~/Dropbox/vim-pad'

""""""""""""""""""""""""""
" start Vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles here:
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'

" required!
filetype plugin indent on

" :BundleList
" :BundleInstall(!)
" :BundleSearch(!) foo
" BundleClean(!)
" end Vundle config
"""""""""""""""""""""""""""

" vim airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
