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

-- Сode diagnostic show
map('n', '<C-s>', '<cmd>lua vim.diagnostic.open_float()<CR>', default_opts)

-- Move to the previous diagnostics
map('n', 'C-[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', default_opts)

-- Move to the next diagnostics
map('n', 'C-]', '<cmd>lua vim.diagnostic.goto_next()<CR>', default_opts)

-- Rename all references
map('n', '<C-r>', '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)

-- Formating current bufer:
map('n', 'bf', '<cmd>lua vim.lsp.buf.format()<CR>', default_opts)

-- Flutter commands
map('n', 'tf', ':Telescope flutter commands<CR>', default_opts)

-- LazyGit
map('n', 'gu', ':lua _GIT_UI()<CR>', default_opts)

