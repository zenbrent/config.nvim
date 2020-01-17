" Tab to autocomplete. List and full are supposed to do other stuff, but it
" seems like they don't... :(  ??? see
" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" Make vim popup behave more like an IDE popup - from .vimrc on tablet
set completeopt=longest,menuone


" set wildignore+=node_modules,*.o,*.obj
" Always show current position
set ruler
set number

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search while you type
set incsearch
" Highlight all matches
set hlsearch
" ctrl-n to clear the highlight
nmap <silent> <C-n> :silent noh<CR>
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Ignores the case when searching, unless you use a cap, then it is case
" sensitive.
set ignorecase
set smartcase




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

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb


" From http://nvie.com/posts/how-i-boosted-my-vim/ :
" If you care about recovering after a Vim or terminal emulator crash, or you
" often load huge files into memory, do not disable the swapfile. 
set noswapfile

" set undofile

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Hide buffers instead of closing them:
set hidden


set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l
set history=5000
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=2                 " minimum lines to keep above and below cursor

" So file watchers don't automatically reload shit..
set nowritebackup

" Mostly so I can scroll.
set mouse=a

