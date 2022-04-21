" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Operator
syn match       jakselOperator            /\%(\<itu\>\|\<gak\>\)/
syn match       jakselOperator            /\%(lebih gede\|lebih kecil\)/
syn match       jakselOperator            /\%(lebih gede sama dengan\|lebih kecil sama dengan\)/
syn match       jakselOperator            /[-+%<>!&|^*=]=\?/

hi def link     jakselOperator            Operator


" Variable
syn keyword     jakselVariable            whichis
syn keyword     jakselVariable            literally
syn keyword     jakselConstant            seriously

hi def link     jakselVariable            Keyword
hi def link     jakselConstant            Constant


" Boolean
syn match       jakselBooleanTrue         /\<worth it\>/
syn match       jakselBooleanTrue         /\<positive vibes\>/
syn match       jakselBooleanFalse        /\<negative vibes\>/

hi def link     jakselBooleanTrue         Boolean
hi def link     jakselBooleanFalse        Boolean


" Print / Console.log
syn keyword     jakselBuiltIn             spill toxic

hi def link     jakselBuiltIn             Function


" String
syn region      jakselString              start=/\v"/ skip=/\v\\./ end=/\v"/

hi def link     jakselString              String


" Condition
syn keyword     jakselConditional         kalo udahan perhaps kalogak

hi def link     jakselConditional         Conditional


" Loop
syn keyword     jakselRepeat              fomo endup

hi def link     jakselRepeat              Repeat


" Function
syn match       jakselFunctionStatement   /\(call\|so about\|thats it sih\)/
syn match       jakselFunctionAsync       /\(overthinking\)/
syn match       jakselFunction            /\(call \|so about \|overthinking \)\@<=\w*/
syn match       jakselFunctionArgs        /\(\(call \|so about \|overthinking \)\w* \)\@<=[^$]*/

hi def link     jakselFunctionAsync       Statement
hi def link     jakselFunctionStatement   Statement
hi def link     jakselFunction            Function
hi def link     jakselFunctionArgs        Identifier


" Comment
sy region       jakselComment             start=+IMO+ end=/$/ extend keepend
sy region       jakselComment             start=+FYI+ end=/$/ extend keepend

hi def link     jakselComment             Comment


" Try Catch & Exception
syn match       jakselException           /\(trust issue\|backstab\|yaudahlahya\)/

hi def link     jakselException           Exception
