syn keyword ariaTodos TODO FIXME NOTE

syn region ariaString start=/"/ skip=/\\"/ end=/"/ oneline

syn region ariaCommentLine start="//" end="$" contains=ariaTodos

syn match myFunction "\<\w\+\ze\(<.\+>\)\?("
hi link myFunction Function

syn keyword ariaKeywords
	\ if
	\ else 
	\ while
	\ for
	\ let
	\ const 
	\ mut
	\ pub
	\ fn
	\ struct
	\ error
	\ module
	\ and
	\ or
    \ as
    \ true
    \ false
    \ null
	\ try
	\ defer
	\ errdefer
	\ return
	\ import
	\ export
	\ extern

syn match ariaDirective "\v\@(import|if|compile_error)"

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
