syntax clear
syntax case match

syntax keyword jstype const
syntax keyword jstype let
syntax keyword jstype var
syntax keyword jstype function

syntax match jsComment /\/\/.*/

syntax region jsString start=/"/ skip=/\\"/ end=/"/
syntax region jsString start=/'/ skip=/\\'/ end=/'/
syntax region jsString start=/`/ end=/`/

hi jstype ctermfg=Green
hi jsComment ctermfg=Blue
hi jsString ctermfg=Yellow
"highlight link jsComment Comment
"highlight link jsString String
"highlight link jstype Type
