" vim-plug theme installation
call plug#begin('~/.config/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
