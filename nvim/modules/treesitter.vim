" Treesitter Installation
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "vue",
    "typescript",
    "javascript",
    "json5",
    "lua",
    "c",
    "cpp",
    "dockerfile",
    "graphql",
    "python",
    "rust",
    "vim",
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
