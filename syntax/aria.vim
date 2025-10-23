syn keyword ariaTodos TODO FIXME NOTE

syn region ariaString start=/"/ skip=/\\"/ end=/"/ oneline
syn region ariaCharacter start=/'/ skip=/\\'/ end=/'/ oneline

syn region ariaCommentLine start="//" end="$" contains=ariaTodos

syn match myFunction "\<\w\+\ze\(<.\+>\)\?("
hi link myFunction Function

syn keyword ariaKeywords
	\ if
	\ else 
	\ while
	\ for
    \ switch
    \ imm
	\ mut
	\ fn
	\ struct
    \ continue
    \ break
	\ defer
	\ return
	\ extern
    \ Self
    \ self
    \ yield
    \ import

syn keyword ariaConstants
    \ true
    \ false
    \ null

syn match ariaDirective "\v\%[^(]+"

syn keyword ariaBuiltinTypes 
	\ u8
	\ u16
	\ u32
	\ u64
	\ usize
	\ i8
	\ i16
	\ i32
	\ i64
	\ isize
    \ bool
	\ void

syn match ariaNumber "\v<\d(_?\d)*>"
syn match ariaNumber "\v<\d+\.\d+>"

hi default link ariaTodos Todo
hi default link ariaKeywords Keyword
hi default link ariaDirective PreProc
hi default link ariaBuiltinTypes Type
hi default link ariaNumber Number
hi default link ariaString String
hi default link ariaCommentLine Comment
hi default link ariaConstants Constant
hi default link ariaCharacter Character
