local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map('n', 'do', '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)
map('n', 'd[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)
map('n', 'd]', '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)

map('n', 'td', '<cmd>Telescope diagnostics<CR>', default_opts)
-- Если вы не хотите использовать плагин telescope, но все еще хотите видеть
-- все ошибки/предупреждения, закомментируйте строку telescope и раскомментируйте это:
-- map('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', default_opts)

vim.diagnostic.config({
  underline = true,
  signs = {
    active = true,
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.HINT]  = "󰟃",
      [vim.diagnostic.severity.INFO]  = "",
    },
  },
  virtual_text = false,
  float = {
    border = "single",
    format = function(diagnostic)
      return string.format(
        "%s (%s) [%s]",
        diagnostic.message,
        diagnostic.source,
        diagnostic.code or diagnostic.user_data.lsp.code
      )
    end,
  },
})
