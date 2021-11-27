" Lspsaga Installation
call plug#begin('~/.config/nvim/plugged')
Plug 'glepnir/lspsaga.nvim'
call plug#end()

" Lspsaga Configuration
call plug#begin('~/.config/nvim/plugged')
lua <<EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}
EOF

" show hover doc
nnoremap <leader>K :Lspsaga hover_doc<CR>
