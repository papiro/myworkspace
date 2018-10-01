syntax enable
set syntax=myjavascript
filetype plugin on

set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start	" allow backspacing over everything in insert mode
"set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set fileencoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set laststatus=2
set statusline=%(%3.l/%-3.L%) " currentLine/totalLines
set statusline+=%=            " split left and right justified
set statusline+=%f            " relative file path

nnoremap <CR> o<Esc>
nnoremap <S-Enter> O<Esc>
nnoremap <Left> :bp<CR>
nnoremap <Right> :bn<CR>
nnoremap <Space> i <ESC> 
nnoremap <S-Right> :vspl<CR>
nnoremap <S-Down> :sp<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }
let g:ctrlp_working_path_mode = 'a'

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
