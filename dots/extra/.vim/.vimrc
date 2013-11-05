" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

set nocompatible
set backspace=indent,eol,start
syntax on
set nu
filetype plugin indent on
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*
set showmode
set cursorline
set showmatch
set incsearch
set hlsearch
set noexpandtab
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
