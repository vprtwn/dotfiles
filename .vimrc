set number
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set noswapfile
set nobackup
set mouse=a

""""""""""""""""""""""""""
" start Neobundle config
if has ('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles here:
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'wjakob/vim-tomorrow-night'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'terryma/vim-multiple-cursors'

" required!
filetype plugin indent on

" :NeoBundleList
" :NeoBundleInstall(!)
" :NeoBundleSearch(!) foo
" :NeoBundleClean(!)

" Installation check.
NeoBundleCheck
"""""""""""""""""""""""""""

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

" vim-gitgutter
let g:gitgutter_enabled = 1
highlight clear SignColumn

" unite
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_history_yank_enable = 1
nnoremap <C-p> :Unite file_mru file_rec/async:! -start-insert -buffer-name=files<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :Unite history/yank<cr>

" syntastic
let g:syntastic_enable_signs=0 "sign markings (at beginning of line, before line numbers)
let g:syntastic_enable_highlighting=2
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1

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

