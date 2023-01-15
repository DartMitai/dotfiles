local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map('n', 'do', '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
map('n', 'd[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)
map('n', 'd]', '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)

map('n', 'td', '<cmd>Telescope diagnostics<CR>', default_opts)
-- Если вы не хотите использовать плагин telescope, но все еще хотите видеть
-- все ошибки/предупреждения, закомментируйте строку telescope и раскомментируйте это:
-- map('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', default_opts)

-- Icons
local signs = {
  Error = "",
  Warn = "",
  Hint = "",
  Info = "",
}
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
