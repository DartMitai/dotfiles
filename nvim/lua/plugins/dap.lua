-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map('n', '<F8>', ":lua require'dap'.toggle_breakpoint()<cr>", opts)
map('n', '<F6>', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<F7>', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", opts)
map('n', '<F5>', ":lua require'dap'.continue()<cr>", opts)
map('n', '<F10>', ":lua require'dap'.step_over()<cr>", opts)
map('n', '<F11>', ":lua require'dap'.step_into()<cr>", opts)
map('n', '<F12>', ":lua require'dap'.step_out()<cr>", opts)
map('n', 'dr', ":lua require'dap'.repl.open()<cr>", opts)
map('n', 'dl', ":lua require'dap'.run_last()<cr>", opts)
