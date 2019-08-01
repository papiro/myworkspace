" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

syntax enable
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
set incsearch
set cursorline "highlight current line
set showmatch "highlight matching [{(
set laststatus=2
set statusline=%(%3.l/%-3.L%) " currentLine/totalLines
set statusline+=%=            " split left and right justified
set statusline+=%f            " relative file path
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

nnoremap <C-c> :bp\|bd #<CR>
nnoremap <Left> :bp<CR>
nnoremap <Right> :bn<CR>
nnoremap <C-p> :e **/
nnoremap + <C-w>><CR>
nnoremap - <C-w><<CR>
nnoremap <Up> <C-w>+<CR>
nnoremap <Down> <C-w>-<CR>
nnoremap gb gT
nnoremap <leader>p :ls<CR>:b 
nnoremap <S-Right> :vs<CR>
nnoremap <S-Down> :sp<CR>
nnoremap zf :fold<CR>

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
let $BASH_ENV = "~/.bash_aliases"

set dir=$HOME/.vim/tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif
