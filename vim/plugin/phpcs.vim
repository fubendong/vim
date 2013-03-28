"function! RunPhpcs()
"    let l:filename=@%
"    let l:phpcs_output=system('phpcs --report=csv --standard=YMC '.l:filename)
    "    echo l:phpcs_output
"    let l:phpcs_list=split(l:phpcs_output, "\n")
"    unlet l:phpcs_list[0]
"    cexpr l:phpcs_list
"    cwindow
"endfunction

"set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
"command! Phpcs execute RunPhpcs()
"
"



function! RunPhpcs()
    let l:filename=@%
    let l:phpcs_output=system('php -l  '.l:filename)
    "echo "==========info============\n"
    "echo l:phpcs_output
    "echo "===========================\n"
    let l:phpcs_list=split(l:phpcs_output, "\n")
    unlet l:phpcs_list[0]
    cexpr l:phpcs_list
    cwindow
endfunction

set errorformat+=\"%f\"\\,%l\\,%c\\,%t%*[a-zA-Z]\\,\"%m\"
command! Phpcs execute RunPhpcs()



function! CheckSyntax()
    if &filetype!="php"
        echohl WarningMsg | echo "Fail to check syntax! Please select the right file!" | echohl None
        return
    endif
    if &filetype=="php"
" Check php syntax
         setlocal makeprg=\"php\"\ -l\ -n\ -d\ html_errors=off
" Set shellpipe
         setlocal shellpipe=>
" Use error format for parsing PHP error output
         setlocal errorformat=%m\ in\ %f\ on\ line\ %l
         endif
         execute "silent make %"
         set makeprg=make
         execute "normal :"
         execute "copen"
endfunction
"打开php语法检测
map <F6> :call CheckSyntax()<CR>
"关闭语法检测
map <F7> :ccl<CR>
