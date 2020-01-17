" Custom color profiles!
" http://bytefluent.com/vivify/

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Set the leader to , instead of \
let mapleader=" "
map ; :

" Required:
set runtimepath+=/home/brent/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/brent/.cache/dein')
  call dein#begin('/home/brent/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/brent/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Lokaltog/vim-easymotion')
  " call dein#add('scrooloose/nerdtree')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('guns/xterm-color-table.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('rhysd/git-messenger.vim', {
        \   'lazy' : 1,
        \   'on_cmd' : 'GitMessenger',
        \   'on_map' : '<Plug>(git-messenger',
        \ })

  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/defx.nvim')
  if !has('nvim')
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  "Plug 'tpope/vim-fugitive'
  "Plug 'editorconfig/editorconfig-vim'
  "Plug 'majutsushi/tagbar'

  "" Try multiple cursors -- it uses <C-n> as it's default key, and some other overlaps...
  "" Plug 'terryma/vim-multiple-cursors'
  "Plug 'tpope/vim-unimpaired'
  "Plug 'tpope/vim-surround'
  "Plug 'pangloss/vim-javascript'
  "Plug 'einars/js-beautify'
  "" Plug 'marijnh/tern_for_vim'

  "" Plug 'Raimondi/delimitMate'
  "Plug 'mattn/webapi-vim'
  "Plug 'mattn/gist-vim'
  "Plug 'cakebaker/scss-syntax.vim'

  "" Write HTML fast - e.g.:
  "" #header > ul > li < p{Footer}
  "Plug 'rstacruz/sparkup'
  "" Plug 'jpalardy/vim-slime'
  "" Use tmux with slime
  "Plug 'epeli/slimux'
  "" let g:slime_target = "tmux"
  "Plug 'tpope/vim-markdown'
  "Plug 'tpope/vim-repeat'
  "" Plug 'NagatoPain/indentLine'
  "" Plug 'Yggdroot/indentLine'

  "" Code autocompletion -- learn it!!
  "" YCM is currently breaking..
  "" Plug 'Valloric/YouCompleteMe'
  "" Plug "teramako/jscomplete-vim"
  "" let g:jscomplete_use = ['dom']

  "" a color scheme
  "Plug 'Lokaltog/vim-distinguished'
  "" Plug 'molokai'
  "Plug 'powerline/powerline'
  "" source ~/.vim/bundle/powerline/ext/vim/powerline.vim
  "set laststatus=2 

  "Plug 'junegunn/vim-easy-align'
  "Plug 'xolox/vim-misc'
  "Plug 'xolox/vim-session'

  "let g:session_autoload = 'no'
  "let g:session_autosave = 'no'

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
nmap <silent> <leader>ve :e $MYVIMRC<CR>
nmap <silent> <leader>vs :so $MYVIMRC<CR>

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






" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search while you type
set incsearch
" Highlight all matches
set hlsearch
nmap <silent> <C-n> :silent noh<CR>

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb

" From http://nvie.com/posts/how-i-boosted-my-vim/ :
" If you care about recovering after a Vim or terminal emulator crash, or you
" often load huge files into memory, do not disable the swapfile. 
set noswapfile

" set undofile

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

autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype stylus setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal autoindent noexpandtab tabstop=4 shiftwidth=4


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

set number

" In normal mode, press Space to toggle the current fold open/closed. However,
" if the cursor is not in a fold, move to the right (the default behavior). In
" addition, with the manual fold method, you can create a fold by visually
" selecting some lines, then pressing Space.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <S-Space> zd
vnoremap <Space> zf

" Hide buffers instead of closing them:
set hidden

" Tab to autocomplete. List and full are supposed to do other stuff, but it
" seems like they don't... :(  ??? see
" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu
" set wildignore+=node_modules,*.o,*.obj

set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l
set history=5000

set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=2                 " minimum lines to keep above and below cursor


" ctrl-navkeys to swtich windows. Add <C-W>_ (e.g. map <C-J> <C-W>j<C-W>_) to
" move and make that page full screen.
map <C-J> <C-W>j 
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" So ss doesn't automatically reload shit..
set nowritebackup


" Make vim popup behave more like an IDE popup - from .vimrc on tablet
set completeopt=longest,menuone

cnoremap :mkdir !mkdir -p <c-r>=expand("%:h")<cr>/

" Mostly so I can scroll.
set mouse=a


" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>


" Mappings for slimux
map <Leader>s :SlimuxREPLSendLine<cr>
vmap <Leader>s :SlimuxREPLSendSelection<cr>
map <Leader>a :SlimuxShellLast<cr>



" Ignores the case when searching, unless you use a cap, then it is case
" sensitive.
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow parentheses!!!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:rbpt_colorpairs = [
"     \ ['brown',       'RoyalBlue3'],
"     \ ['Darkblue',    'SeaGreen3'],
"     \ ['darkgray',    'DarkOrchid3'],
"     \ ['darkgreen',   'firebrick3'],
"     \ ['darkcyan',    'RoyalBlue3'],
"     \ ['darkred',     'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['brown',       'firebrick3'],
"     \ ['gray',        'RoyalBlue3'],
"     \ ['black',       'SeaGreen3'],
"     \ ['darkmagenta', 'DarkOrchid3'],
"     \ ['Darkblue',    'firebrick3'],
"     \ ['darkgreen',   'RoyalBlue3'],
"     \ ['darkcyan',    'SeaGreen3'],
"     \ ['darkred',     'DarkOrchid3'],
"     \ ['red',         'firebrick3'],
"     \ ]

" au VimEnter * RainbowParenthesesActivate
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" syntax keyword javascript not conceal cchar=¬
" syntax keyword javascript function conceal cchar=λ
" syntax match javascript 'function' contained conceal cchar=λ
" syntax keyword  kjkjhlhl conceal cchar=YES

set conceallevel=2


" To make tabs more readable, the label only contains the tail of the file
" name and the buffer modified flag.
set guitablabel=%M%t

source ~/.config/nvim/settings.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autoformatting options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" csharp
let g:formatprg_cs = "astyle"
let g:formatprg_args_expr_cs = '"--mode=cs --style=attach --indent-namespaces -pcH".(&expandtab ? "s".&shiftwidth : "t")'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use w!! to edit a file with root access.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
cmap w!! w !sudo tee % >/dev/null

" Custom mappings for the unite buffer
" autocmd FileType unite call s:unite_settings()
" function! s:unite_settings()
" Play nice with supertab
" let b:SuperTabDisabled=1
" Enable navigation with control-j and control-k in insert mode
" imap <buffer> <C-j>   <Plug>(unite_select_next_line)
" imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
" endfunction

" autocmd FileType javascript nnoremap gd :TernDef<cr>

com! JsonPrettify %!python -m json.tool



