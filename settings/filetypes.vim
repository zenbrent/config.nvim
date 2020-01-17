" debug for fixing autocommands
" set verbose=9
""""""""""""""""""""""""""""""
" => Folding
""""""""""""""""""""""""""""""
augroup vimrc
  " delete the old version if it exists, so this can be re-sourced
  au!

  au BufNewFile,BufReadPost *.es6 setl foldmethod=indent nofoldenable filetype=javascript
  " Manual folding too!
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif

  au BufWinEnter,BufRead,BufNewFile *.json set filetype=javascript
  au BufWinEnter,BufRead,BufNewFile *.sdtx set filetype=javascript

  " lisp and others
  " au BufWinEnter,BufRead,BufNewFile *.ls set filetype=lisp
  au BufWinEnter,BufRead,BufNewFile *.ust set filetype=html
  " au BufRead,BufNewFile *.shen set ft=clojure

augroup END


