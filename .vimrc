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
set incsearch
set hlsearch
set showcmd
set ai
set si
set grepprg=ack
set cursorline
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

:color elflord
syntax on
filetype indent plugin on

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
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/syntastic'

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

"""""""""""""""""""""""""""
" NERDTree with netrw
" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir
"""""""""""""""""""""""""""
