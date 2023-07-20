call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'

call plug#end()

set laststatus=2

set t_Co=256
set t_ut=

syntax on
set number relativenumber
set nu rnu
set tabstop=4
set shiftwidth=4
set softtabstop=4

set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

set hidden
set nobackup

"on instance where backspace & delete key doesn't work as intended 
"set backspace=indent,eol,start

set termguicolors
"colorscheme molokai
colorscheme onedark

set noshowmode
"let g:lightline = { 'colorscheme': 'molokai' }
let g:lightline = { 'colorscheme': 'onedark' }
