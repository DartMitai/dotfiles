local npairs = require("nvim-autopairs")
local cmp = require('cmp')

-- change default fast_wrap
npairs.setup({
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey = 'Comment'
  },
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })
