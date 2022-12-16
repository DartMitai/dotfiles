local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- Переключение вкладок
map('n', '<A-Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)

-- <F + Number> дерево файлов.
map('n', '<F1>', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)

map('n', '<F2>', ':NvimTreeRefresh<CR>:NvimTreeFocus<CR>', default_opts)

-- Code Actions
map('n', '<C-a>', '<cmd>lua vim.lsp.buf.code_action()<CR>', default_opts)

-- Сode defenition
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)

-- Formating current bufer:
map('n', 'bf', '<cmd>lua vim.lsp.buf.format()<CR>', default_opts)

-- Flutter commands
map('n', 'tf', ':Telescope flutter commands<CR>', default_opts)

-- LazyGit
map('n', 'gu', ':lua _GIT_UI()<CR>', default_opts)

-- DapUi
vim.keymap.set("n", "<F8>", function()
  require("dapui").eval()
end)
vim.keymap.set("n", "<F9>", function()
  require("dap").continue()
end)
vim.keymap.set("n", "<F10>", function()
  require("dap").step_over { granularity = { not_used = true } }
end)
vim.keymap.set("n", "<F11>", function()
  require("dap").step_into { granularity = { not_used = true } }
end)
vim.keymap.set("n", "<F12>", function()
  require("dap").step_out { granularity = { not_used = true } }
end)