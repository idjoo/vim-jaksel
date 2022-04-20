" syntax keyword jakselConditional
"     \ kalo
"     \ spill
"     \ fomo
"     \ udahan

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif


" Operator
syn match       jakselOperator      /\%(\<itu\>\|\<gak\>\)/
syn match       jakselOperator      /\%(lebih gede\|lebih kecil\)/
syn match       jakselOperator      /\%(lebih gede sama dengan\|lebih kecil sama dengan\)/

hi def link     jakselOperator      Operator


" Variable
syn keyword     jakselVariable      whichis       skipempty
syn keyword     jakselVariable      literally     skipempty
syn keyword     jakselConstant      seriously     skipempty

hi def link     jakselVariable      Keyword
hi def link     jakselConstant      Keyword


" Boolean
syn match       jakselBooleanTrue   "\<worth it\>"
syn match       jakselBooleanTrue   "\<positive vibes\>"
syn match       jakselBooleanFalse  "\<negative vibes\>"

hi def link     jakselBooleanTrue   Boolean
hi def link     jakselBooleanFalse  Boolean


" Print / Console.log
syn keyword     jakselFunction      spill

hi def link     jakselFunction      Function


" Condition
syn keyword     jakselConditional   kalo udahan perhaps kalogak

hi def link     jakselConditional   Conditional


" Loop
syn keyword     jakselRepeat        fomo endup

hi def link     jakselRepeat        Repeat


" Comment
sy region       jakselComment       start=+IMO+ end=/$/   extend keepend
sy region       jakselComment       start=+FYI+ end=/$/   extend keepend
sy region       jakselComment       start=+//+ end=/$/    extend keepend
sy region       jakselComment       start=+/\*+ end=+\*/+ extend keepend

hi def link     jakselComment       Comment












syntax keyword  jakselTodos     contained TODO
