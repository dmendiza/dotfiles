filetype plugin on

syntax on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set number
set colorcolumn=80

let g:netrw_list_hide = '.pyc'
let netrw_winsize=""

" Higlight trailing whitespace
match ErrorMsg '\s\+$'
