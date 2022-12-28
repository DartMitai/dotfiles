require 'nvim-treesitter.configs'.setup {
  ensure_installed      = { 'dart' },
  ignore_install        = { 'c', 'lua', },
  highlight             = { enable = true },
  incremental_selection = { enable = true },
  textobjects           = { enable = true },
  indent                = { enable = false },
  autopairs             = { enable = true },
}
