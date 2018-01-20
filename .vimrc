set nocompatible
filetype off

call plug#begin('~/.vim/plugins')

Plug 'https://github.com/Valloric/YouCompleteMe.git'
Plug 'https://github.com/digitaltoad/vim-pug.git'
Plug 'https://github.com/kien/ctrlp.vim.git'

call plug#end()

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

"colorscheme frozen
colorscheme tinydark
syntax enable
au BufReadPost *.axe set syntax=css
au BufReadPost *.bns set syntax=html

let g:netrw_liststyle=3

" (-: KEY MAPPINGS :-)
nnoremap <S-Enter> O<Esc>
nnoremap <CTRL-c> <Esc>
nnoremap <CR> o<Esc>
nnoremap <space> i<space><esc>
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
nnoremap <F2> :tabp<CR>
nnoremap <F3> :tabn<CR>
nnoremap <S-Right> :vspl<CR>
nnoremap <S-Down> :sp<CR>
