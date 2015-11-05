set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'colorsupport.vim'

call vundle#end()
filetype plugin indent on

" highlight Cursor ctermfg=red ctermbg=green
" highlight Normal ctermbg=white ctermfg=black
colorscheme frozen
syntax enable

filetype plugin indent on
set tabstop=3
set shiftwidth=3
set expandtab

nnoremap <space> i<space><esc>
