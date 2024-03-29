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
map('n', '<C-d>', '<cmd>lua vim.lsp.buf.definition()<CR>', default_opts)

-- Signature help
map('n', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', default_opts)

-- Formating current bufer:
map('n', 'bf', '<cmd>lua vim.lsp.buf.format()<CR>', default_opts)

-- Flutter commands
map('n', 'tf', ':Telescope flutter commands<CR>', default_opts)

-- LazyGit
map('n', 'gu', ':lua _GIT_UI()<CR>', default_opts)

