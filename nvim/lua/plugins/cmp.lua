local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')


require("luasnip/loaders/from_vscode").lazy_load { paths = { "/home/mitai/.config/nvim/lua/snippets" } }
require("luasnip").filetype_extend("dart", { "flutter" })

local source_mapping = {
  luasnip = '[snip]',
  buffer = "[buf]",
  nvim_lsp = "[lsp]",
  path = "[path]"
}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-c>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),

  sources = cmp.config.sources {
    { name = 'nvim_lsp' },
    {
      name = 'luasnip',
      keyword_length = 2,
      priority = 50,
    },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'nvim_lsp_signature_help' }
  },
  experimental = {
    -- New menu, better than the old menu
    native_menu = false,
    -- "ghost" completion
    ghost_text = true,
  },
}

-- Use buffer source for `/`.
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
