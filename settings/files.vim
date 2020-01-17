" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Use w!! to edit a file with root access.
cmap w!! w !sudo tee % >/dev/null

