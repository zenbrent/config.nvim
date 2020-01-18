" ctrl-navkeys to swtich windows. Add <C-W>_ (e.g. map <C-J> <C-W>j<C-W>_) to
" move and make that page full screen.
map <C-J> <C-W>j 
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

""""""""""""""""
" easymotion 

" find in all visible buffers
nmap <Leader><Leader>F <Plug>(easymotion-overwin-f)

" jump to a line in current buffer
map <Leader><Leader>l <Plug>(easymotion-bd-jk)

" jump to a line in any visible buffer
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)

" jump to a word in any visible buffer (current buffer is set by default)
nmap <Leader><Leader>W <Plug>(easymotion-overwin-w)
