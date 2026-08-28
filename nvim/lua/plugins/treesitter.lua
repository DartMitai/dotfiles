require ('nvim-treesitter').setup {
  install               = { 'dart' },
  ignore_install        = {},
  highlight             = { enable = true },
  incremental_selection = { enable = true },
  textobjects           = { enable = true },
  indent                = { enable = true },
  autopairs             = { enable = true },
}
