set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'colorsupport.vim'

call vundle#end()

hi Cursor ctermfg=red ctermbg=green
hi Normal ctermbg=black ctermfg=white
hi Comment ctermfg=DarkGray
hi Statement ctermfg=darkgreen
hi Identifier ctermfg=blue
hi function ctermfg=darkgrey
hi javaScriptParens ctermfg=darkgrey
hi javaScriptValue ctermfg=darkcyan
hi String ctermfg=cyan
hi templateString ctermfg=cyan
hi PreProc ctermfg=white
hi Constant ctermfg=white
hi Type ctermfg=white
hi Special ctermfg=white
hi Underlined ctermfg=white
hi Error ctermbg=red

filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2

" colorscheme frozen
syntax enable

let g:netrw_liststyle=3

" (-: KEY MAPPINGS :-)
nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <space> i<space><esc>
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
