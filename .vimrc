set number
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch "from JG

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
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'airblade/vim-gitgutter'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wjakob/vim-tomorrow-night'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'tpope/vim-sensible'
Bundle 'nvie/vim-flake8'

" required!
filetype plugin indent on

" :BundleList
" :BundleInstall(!)
" :BundleSearch(!) foo
" :BundleClean(!)
" end Vundle config
"""""""""""""""""""""""""""

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

" vim-gitgutter
let g:gitgutter_enabled = 1
highlight clear SignColumn

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" syntastic
let g:syntastic_enable_signs=0 "sign markings (at beginning of line, before line numbers)
let g:syntastic_enable_highlighting=2
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" cursorline only in active buffer
augroup CursorLine
  au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
      au WinLeave * setlocal nocursorline
      augroup END

" colors
syntax enable
set background=dark
" colorscheme solarized
colorscheme Tomorrow-Night

" gmcs
compiler! gmcs
set mp=gmcs\ -recurse:*.cs\ -lib:/Applications/Unity/Unity.app/Contents/Frameworks/\ -lib:/Applications/Unity/Unity.app/Contents/Frameworks/Mono.framework/\ -r:UnityEngine\ -r:UnityEditor\ -r:Boo.Lang\ -nowarn:0169\ -target:module
set autowrite

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

