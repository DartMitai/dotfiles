local luasnip = require('luasnip')
require("luasnip.loaders.from_vscode").lazy_load({ paths = "/home/mitai/.config/nvim/snippets" })
require("luasnip").filetype_extend("dart", { "flutter" })

luasnip.config.set_config({
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
