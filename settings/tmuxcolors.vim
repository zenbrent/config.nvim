" Enable true color in tmux!!!
" from https://github.com/tmux/tmux/issues/1246
if exists('+termguicolors')
  set termguicolors
endif

""" Add this to tmux:
" set -g default-terminal "tmux-256color"
" set -ga terminal-overrides ",*256col*:Tc"
"
"
" If you need to add italics to your shell
" (via https://vi.stackexchange.com/questions/13491/no-italics-in-vim/14873#14873)
"
" Test that it supports italics:
" $ echo -e "\e[3mfoo\e[23m"
"
" if it does, get the terminfo file:
" $ infocmp -L $TERM > $TERM.terminfo
"
" Look for the strings ritm and sitm. If they exist, something else is wrong.
" If they don't exist, add this to the end:
"
"```
" ritm=\E[23m, sitm=\E[3m,
"```
"
" and update the terminfo file:
" $ tic -o ~/. $TERM.terminfo
