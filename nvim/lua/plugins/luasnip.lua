local luasnip = require('luasnip')
require("luasnip/loaders/from_vscode").lazy_load()
require("luasnip/loaders/from_vscode").load({ paths = "/home/mitai/.config/nvim/lua/snippets" })
require("luasnip").filetype_extend("dart", { "flutter" })

luasnip.config.set_config({
  history = true,
  updateevents = 'TextChanged,TextChangedI',
  enable_autosnippets = true,
  ext_opts = {
    [require('luasnip.util/types').choiceNode] = {
      active = {
        virt_text = { { '●', 'GruvboxOrange' } }
      }
    }
  }
})
