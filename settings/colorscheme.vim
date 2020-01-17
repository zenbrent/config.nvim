" " Something messes up the colors of popup menus so they're unreadable. The fix:
" highlight Pmenu ctermbg=250 ctermfg=0
" highlight PmenuSel ctermbg=255 ctermfg=8

"" Change the horzontal and vertical split colors
"highlight VertSplit ctermbg=236 ctermfg=236
highlight VertSplit ctermbg=235 ctermfg=235

"" active pane horizontal bar color
" highlight StatusLine cterm=italic ctermbg=241 ctermfg=81
highlight StatusLine cterm=italic ctermbg=235 ctermfg=81

"" inactive pane horzontal bar color
"highlight StatusLineNC cterm=italic ctermbg=236 ctermfg=242
highlight StatusLineNC cterm=italic ctermbg=235 ctermfg=242

" " highlight VertSplit ctermbg=8 ctermfg=0
" " highlight StatusLine cterm=italic ctermbg=235 ctermfg=247
" " highlight StatusLineNC cterm=italic ctermbg=234 ctermfg=240

" " tab pages line, active tab page label
" highlight TabLineSel cterm=NONE ctermbg=249 ctermfg=0
" " highlight TabLineSel cterm=NONE ctermbg=235 ctermfg=249

" " labels for inactive tabs
" highlight TabLine cterm=NONE ctermbg=245 ctermfg=264
" " highlight TabLine cterm=NONE ctermbg=233 ctermfg=240

" " the rest of the tab line
" highlight TabLineFill ctermbg=0 ctermfg=245
" " highlight TabLineFill ctermbg=0 ctermfg=234

" " titles for output from ":set all", ":autocmd" etc.
" highlight Title ctermbg=15 ctermfg=8
" highlight Visual ctermbg=250 ctermfg=0
" " highlight Title ctermbg=233 ctermfg=248
" " highlight Visual ctermbg=250 ctermfg=235

" Italicize comments.
highlight Comment cterm=italic


" highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" highlight CursorLine cterm=underline ctermbg=NONE ctermfg=NONE guibg=darkred guifg=white
highlight CursorColumn
      \ cterm=NONE ctermbg=235 ctermfg=NONE
      \ guibg=none guifg=white

augroup vimrc_cursorcolum
  au!

  au WinLeave * set nocursorcolumn
  au WinEnter * set cursorcolumn
augroup END

set cursorcolumn

" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn


