" lsp completion installation
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/completion-nvim'
call plug#end()

" Configuration
lua <<EOF
local on_attach = function(client, bufnr)
  require'completion'.on_attach(client, bufnr)
end
EOF

" Keymaps
set completeopt=menuone,noinsert,noselect
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
