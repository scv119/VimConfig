"pydiction 1.2 python auto complete
filetype plugin on
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20

set cursorline
syntax enable
syntax on
colorscheme desert
set nu

"Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"WinManager and Taglist

let g:NERDTree_title="[NERD Tree]" 

let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'

function! NERDTree_Start()

    exec 'NERDTree'

endfunction

function! NERDTree_IsValid()

    return 1

endfunction

nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>

"set auto open Winmanager 
"if g:AutoOpenWinManager 
" autocmd VimEnter * nested call s:StartWindowsManager()|1wincmd w  
"endif


"Ctags Create tags
nmap ct :!ctags -R *<CR>

"miniBuffer

"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
"Grep
nnoremap <silent> <F4> :Grep<CR>
"python_fold
"set foldmethod=indent

set expandtab 
set shiftwidth=4 
set tabstop=4 
set softtabstop=4
set autoindent

nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
