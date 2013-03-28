
vmap \em :call ExtractMethod()<cr>
function! ExtractMethod() range
let name = inputdialog("Name of new method:")
'<
exe "normal O\<bs>private " . name ."()\<cr>{\<esc>"
'>
exe "normal oreturn ;\<cr>}\<esc>k"
s/return/\/\/ return/ge
normal j%
normal kf(
		exe "normal yyPi// = \<esc>wdwA;\<esc>"
		normal ==
		normal j0w
endfunction

function! ImplementAbstractClass() range
exe "normal \<esc>\"yyw"
/{
normal "xy%
normal %o
exe "normal \<esc>o"
let name = inputdialog("Name of new method:")
exe "normal ipublic class " .name." : \<esc>\"yp\"xp"
exe "normal }O}\<esc>=="
normal %v%
normal gv
'<,'>s/abstract/override/g
normal gv
'<,'>s/;/\r{\r}\r/g
normal ==
normal %kdd%k
endfunction 
