"vim-plug theme installation
call plug#begin('~/.config/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" Italics support
set t_ZH=^[[3m
set t_ZR=^[[23m
highlight Comment cterm=italic gui=italic

