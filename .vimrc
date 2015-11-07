set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'colorsupport.vim'

call vundle#end()
filetype plugin indent on

" hi Cursor ctermfg=red ctermbg=green
" hi Normal ctermbg=black ctermfg=green
colorscheme frozen
syntax enable

filetype plugin indent on
set tabstop=3
set shiftwidth=3
set expandtab

" (-: KEY MAPPINGS :-)
nnoremap <space> i<space><esc>
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
