syntax enable
set syntax=myjavascript
filetype plugin on

set expandtab
set fileencoding=utf-8
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set laststatus=2
set statusline=%(%3.l/%-3.L%) " currentLine/totalLines
set statusline+=%=            " split left and right justified
set statusline+=%f            " relative file path

set runtimepath^=~/.vim/bundle/ctrlp.vim

inoremap jf <Esc>
nnoremap <Left> :bp<CR>
nnoremap <Right> :bn<CR>
nnoremap <Space> i <ESC> 

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules'
  \ }
let g:ctrlp_working_path_mode = 'a'
