""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smarttab

" Use spaces as tabs:
" 1 tab == 2 spaces
set expandtab
" set tabstop=4 shiftwidth=4 softtabstop=4
set tabstop=2 shiftwidth=2 softtabstop=2

" Use tabs as tabs:
" set autoindent noexpandtab tabstop=4 shiftwidth=4

augroup vimrc_tabs
  au!

  autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
  autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
  autocmd Filetype stylus setlocal ts=2 sts=2 sw=2
  autocmd Filetype scss setlocal autoindent noexpandtab tabstop=4 shiftwidth=4
augroup END
