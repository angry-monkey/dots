" Set the size of a hard tabstop
setlocal tabstop=2

" Set the size of an "indent"
setlocal shiftwidth=2

" Set syntax as fold method
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
