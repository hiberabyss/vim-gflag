if exists('b:current_syntax')
    finish
endif
let b:current_syntax = 'gflag'

syntax region gflagComment start="#" oneline end="$"
syntax region gflagItem start="--\w" end="$" oneline contains=gflagBool
syntax keyword gflagBool true false

highlight link gflagComment Comment
highlight link gflagBool Function
highlight link gflagItem Structure
