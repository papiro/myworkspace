" Name: TinyDark color theme
" Author: cideM on Github
" URL: https://github.com/cidem/tinydark
" (see this url for latest release & screenshots)
" License: MIT license

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "tinydark"

" Baseline
hi Normal term=NONE cterm=NONE ctermfg=7 ctermbg=NONE

" Faded
hi ColorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi Comment term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi FoldColumn term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi Folded term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi String term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
hi Character term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
hi LineNr term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi NonText term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi SignColumn term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi SpecialKey term=NONE cterm=NONE ctermfg=8 ctermbg=NONE
hi StatusLineNC term=NONE cterm=NONE ctermfg=7 ctermbg=0
hi VertSplit term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

" Highlighted
hi Visual term=NONE cterm=NONE ctermfg=0 ctermbg=7
hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi CursorIM term=NONE cterm=NONE ctermfg=black ctermbg=4
hi CursorLineNr term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi Cursor term=NONE cterm=NONE ctermfg=black ctermbg=4
hi Directory term=NONE cterm=NONE ctermfg=7 ctermbg=8
hi ErrorMsg term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
hi Error term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
hi IncSearch term=NONE cterm=NONE ctermfg=0 ctermbg=3
hi MatchParen term=NONE cterm=NONE ctermfg=0 ctermbg=15
hi ModeMsg term=NONE cterm=NONE ctermfg=7 ctermbg=NONE
hi MoreMsg term=NONE cterm=NONE ctermfg=7 ctermbg=NONE
hi Question term=NONE cterm=NONE ctermfg=7 ctermbg=NONE
hi Search term=NONE cterm=NONE ctermfg=0 ctermbg=3
hi Todo term=NONE cterm=NONE ctermfg=10 ctermbg=NONE
hi WarningMsg term=NONE cterm=NONE ctermfg=fg ctermbg=NONE
hi PmenuSel term=NONE cterm=NONE ctermfg=0 ctermbg=15
hi Pmenu term=NONE cterm=NONE ctermfg=7 ctermbg=8
hi StatusLine term=NONE cterm=NONE ctermfg=7 ctermbg=8
hi StatusLineNC term=NONE cterm=NONE ctermfg=7 ctermbg=8
hi WildMenu term=NONE cterm=NONE ctermfg=0 ctermbg=15

" Diff
hi DiffAdd term=NONE cterm=NONE ctermfg=2 ctermbg=NONE
hi DiffChange term=NONE cterm=NONE ctermfg=3 ctermbg=NONE
hi DiffDelete term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
hi DiffText term=NONE cterm=NONE ctermfg=4 ctermbg=NONE

" Spell
hi SpellBad term=underline cterm=underline ctermfg=1 ctermbg=NONE
hi SpellCap term=underline cterm=underline ctermfg=1 ctermbg=NONE
hi SpellLocal term=underline cterm=underline ctermfg=1 ctermbg=NONE
hi SpellRare term=underline cterm=underline ctermfg=1 ctermbg=NONE

" Vim Features
hi Menu term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi Scrollbar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi TabLineFill term=NONE cterm=NONE ctermfg=fg ctermbg=NONE
hi TabLine term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi Tooltip term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

" Syntax Highlighting (or lack of)
hi Boolean term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Character term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conceal term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Conditional term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Constant term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Debug term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Define term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Delimiter term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Directive term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Exception term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Float term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Format term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Function term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Identifier term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Ignore term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Include term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Keyword term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Label term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Macro term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Number term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Operator term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreCondit term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi PreProc term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Repeat term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialChar term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi SpecialComment term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Special term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Statement term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi StorageClass term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Structure term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Tag term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Title term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Typedef term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Type term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi Underlined term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE

" Sneak
hi SneakLabelMask term=NONE cterm=NONE ctermfg=black ctermbg=195
hi SneakTarget term=NONE cterm=NONE ctermfg=black ctermbg=195
hi SneakLabelTarget term=NONE cterm=NONE ctermfg=black ctermbg=183
hi SneakScope term=NONE cterm=NONE ctermfg=black ctermbg=183
