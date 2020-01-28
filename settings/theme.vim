" To make tabs more readable, the label only contains the tail of the file
" name and the buffer modified flag.
set guitablabel=%M%t

" " Something messes up the colors of popup menus so they're unreadable. The fix:
" highlight Pmenu ctermbg=250 ctermfg=0
" highlight PmenuSel ctermbg=255 ctermfg=8

" Italicize comments.
highlight Comment gui=italic cterm=italic

" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLine
      \ cterm=NONE ctermbg=NONE ctermfg=NONE
      \ gui=NONE guibg=#252525 guifg=none
highlight CursorColumn
      \ cterm=NONE ctermbg=235 ctermfg=NONE
      \ gui=NONE guibg=#252525 guifg=NONE

augroup vimrc_cursorcolum
  au!

  au WinLeave * set nocursorcolumn
  au WinEnter * set cursorcolumn
  au WinLeave * set nocursorline nocursorcolumn
  au WinEnter * set cursorline cursorcolumn
augroup END

set cursorcolumn
set cursorline cursorcolumn



" Change the horzontal and vertical split colors
highlight VertSplit
      \ cterm=NONE ctermbg=235 ctermfg=235
      \ gui=NONE guibg=#444444 guifg=#444444

" active pane horizontal bar color (the one on the bottom)
highlight StatusLine
      \ cterm=italic ctermbg=241 ctermfg=81
      \ gui=italic guibg=#cc4477 guifg=#000000

" inactive pane horzontal bar color
highlight StatusLineNC
      \ cterm=italic ctermbg=236 ctermfg=242
      \ gui=italic guibg=#222222 guifg=#d0b0c0

" tab pages line, active tab page label
highlight TabLineSel
      \ cterm=NONE ctermbg=249 ctermfg=0
      \ gui=NONE guibg=#222222 guifg=#ee55aa

" labels for inactive tabs
highlight TabLine
      \ cterm=NONE ctermbg=245 ctermfg=264
      \ gui=NONE guibg=#222222 guifg=#cccccc

" the rest of the tab line
highlight TabLineFill
      \ ctermbg=0 ctermfg=245
      \ gui=NONE guibg=#222222 guifg=#cccccc

" titles for output from ":set all", ":autocmd" etc.
highlight Title
      \ ctermbg=15 ctermfg=8
      \ gui=NONE guibg=#000000 guifg=#cccccc

highlight Visual
      \ ctermbg=250 ctermfg=0
      \ gui=NONE guibg=#454545 guifg=NONE

