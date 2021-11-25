" Installing lualine
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lualine/lualine.nvim'
call plug#end()

" Configuration
lua << END
require'lualine'.setup({
    options = {
        icons_enabled = false,
        theme = 'gruvbox_dark' ,
    }
})
END

