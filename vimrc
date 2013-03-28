" Summer's Configuration file for vim based on hongbo's share
" add fubendong
"
"
set nocompatible    " be iMproved
filetype off        " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
"dxxygen seting 
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_authorName="fubendong fubendong@baidu.com"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_licenseTag="My own license"


map <F3>a : DoxAuthor
map <F3>c : Dox
map <F3>b : DoxBlock

"add fubendong
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1 

let MRU_File='/home/passport/vim/fubendong/mru.txt' 
let MRU_Max_Entries=50 
let MRU_Window_Height=10 
let MRU_Auto_Close=1 
"map <silent> <leader>h :MRU<CR>
"map <silent> <leader>h :MRU<CR>
command M MRU

" required!
Bundle 'gmarik/vundle'
" vim-scripts repos
Bundle 'vim-plugin-foo'
Bundle 'vim-plugin-bar'
filetype plugin indent on    " required!

""add fubendong@baidu.com

"让vim记忆上次编辑的位置
autocmd BufReadPost *
           \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif
"让vim记忆上次编辑的位置


""add fubendong@baidu.com
call pathogen#infect() 

set autoindent
set smartindent

set hlsearch
set incsearch


" 搜索忽略大小写
set ignorecase 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

" 把 F8 映射到 启动NERDTree插件
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
map <F8> :NERDTree<CR>  

" 在不同的窗口移动
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" 禁止生成临时文件
set nobackup
set noswapfile

let g:neocomplcache_enable_at_startup = 1
set t_Co=256

nmap ,t :CommandT<CR>
nmap ,b :CommandTBuffer<CR>

autocmd FileType php noremap <C-L> :!/home/passport/ppui/php/bin/php -l %<CR> 
" 使用(CTRL-L)命令来检查PHP语法

"map <F1> :call ToggleSketch()<CR> 



" Email:summer@snakr.com
" Blog: http://summic.com

set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

set nu
"编码设置
"utf-8编码
" 设置编码
set enc=utf-8
" 设置文件编码
set fenc=zh_CN.utf-8
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gb2312,cp936
" 指定菜单语言
set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim 
language message zh_CN.UTF-8

set encoding=utf-8
set fileencodings=utf8,chinese,taiwan,ansi,gbk,ucs-bom,cp936
set guifont=Courier_New:h12:w7
set guifontwide=NSimSun-18030,NSimSun
set ambiwidth=double
set termencoding=utf-8
" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 不要备份文件（根据自己需要取舍）
set nobackup

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 语法高亮
filetype plugin indent on
syntax enable

" 函数自动完成
"" 需要下载php函数列表 http://cvs.php.net/viewvc.cgi/phpdoc/funclist.txt?view=co
set dictionary-=~/.vim/funclist.txt dictionary+=~/.vim/funclist.txt

"Use the dictionary completion
set complete-=k complete+=k

function! InsertTabWrapper()
    let col=col('.')-1
    if !col || getline('.')[col-1] !~ '\k'
                return "\<TAB>"
                    else
    return "\<C-N>"
    endif
endfunction

"Remap the tab key to select action with InsertTabWrapper
inoremap <TAB> <C-R>=InsertTabWrapper()<CR>

"TAB缩进设置===============
set expandtab
"set sw=4
set et sw=4 ts=4 sts=4
set tabstop=4
set softtabstop=4


"导入cscope数据库 
if filereadable("/home/users/yangxiongnan/.vimtagtmp/cscope.out")
    execute "cscope add /home/users/yangxiongnan/.vimtagtmp/cscope.out"
endif

"高亮显示括号
set showmatch


let Tlist_Inc_Winwidth=0

let Tlist_Ctags_Cmd="/home/passport/soft/ctags58/bin/ctags"
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer'
nmap tl :Tlist<cr>


"""""""""""""""""""""""""""""""

"" winManager setting

"""""""""""""""""""""""""""""""

"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
"let g:defaultExplorer = 0

"设置界面分割
"
""let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"

"let g:winManagerWindowLayout = "TagList|NERDTree,BufExplorer"

"let g:winManagerWindowLayout='NERDTree,BufExplorer'
 

"在进入vim时自动打开winmanager
"let g:AutoOpenWinManager = 1

"Used by winmanager {{{1

let g:NERDTree_title="[NERD Tree]" 

let g:winManagerWindowLayout='NERDTree,BufExplorer'

function! NERDTree_Start()

    exec 'NERDTree'

endfunction

function! NERDTree_IsValid()

    return 1

endfunction

