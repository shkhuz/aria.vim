if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal iskeyword+=#

setlocal suffixesadd=.ar

if has('comments')
    setlocal comments=:///,://!,://,:\\\\
    setlocal commentstring=//\ %s
endif
