" Custom color profiles!
" http://bytefluent.com/vivify/

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Set the leader to , instead of \
let mapleader=" "

" ; is easier than :
map ; :

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Evaluate alternatives
  call dein#add('tpope/vim-commentary')

  call dein#add('tpope/vim-surround')
  call dein#add('Lokaltog/vim-easymotion')
  call dein#add('scrooloose/nerdtree')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('guns/xterm-color-table.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('rhysd/git-messenger.vim', {
        \   'lazy' : 1,
        \   'on_cmd' : 'GitMessenger',
        \   'on_map' : '<Plug>(git-messenger',
        \ })

  " Denite dark powered plugin to unite all interfaces.
  call dein#add('Shougo/denite.nvim')

  call dein#add('Shougo/defx.nvim')

  " required for all Shougo's stuff to work on old vim
  if !has('nvim')
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  call dein#add('epeli/slimux')


  """"""""""""""""
  " Plugins I've used before. Adding them back in as needed.

  " tpope/vim-unimpaired
  " tpope/vim-repeat
  " junegunn/vim-easy-align

  " Write HTML fast - e.g.:
  " #header > ul > li < p{Footer}
  " rstacruz/sparkup

  " NagatoPain/indentLine
  " Yggdroot/indentLine

  "" a color scheme
  " Lokaltog/vim-distinguished
  " molokai
  " powerline/powerline
  " source ~/.vim/bundle/powerline/ext/vim/powerline.vim
  " set laststatus=2 


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


" Quickly edit/reload the vimrc file
" nmap <silent> <leader>ve :e $MYVIMRC<CR>
nnoremap <silent> <leader>ve :tabnew<CR>:e $MYVIMRC<CR>:NERDTree $MYVIMRC<CR>
nnoremap <silent> <leader>vs :so $MYVIMRC<CR>

nmap <silent> <leader>ft :NERDTree<CR>


"""""""
" Git messanger config
" go into the window by running the command again
nmap <leader>gm <Plug>(git-messenger)
" q	Close the popup window
" o	older. Back to older commit at the line
" O	Opposite to o. Forward to newer commit at the line
" d	Toggle diff hunks only related to current file in the commit
" D	Toggle all diff hunks in the commit
" ?	Show mappings help

" syntax keyword javascript not conceal cchar=¬
" syntax keyword javascript function conceal cchar=λ
" syntax match javascript 'function' contained conceal cchar=λ
" syntax keyword  kjkjhlhl conceal cchar=YES
" set conceallevel=2

source ~/.config/nvim/settings.vim

com! JsonPrettify %!python -m json.tool

