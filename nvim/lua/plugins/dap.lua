local dap = require('dap')

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { silent = true, noremap = true }

map('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<cr>", opts)
map('n', '<leader>dB', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map('n', '<leader>dp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", opts)
map('n', '<F5>', ":lua require'dap'.continue()<cr>", opts)
map('n', '<F10>', ":lua require'dap'.step_over()<cr>", opts)
map('n', '<F11>', ":lua require'dap'.step_into()<cr>", opts)
map('n', '<F12>', ":lua require'dap'.step_out()<cr>", opts)
map('n', '<leader>dr', ":lua require'dap'.repl.open()<cr>", opts)
map('n', '<leader>dl', ":lua require'dap'.run_last()<cr>", opts)

dap.adapters.dart = {
  type = "executable",
    command = "flutter",
    args = {"debug_adapter"}
  }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch flutter",
      flutterSdkPath = '/home/mitai/Soft/flutter/bin/flutter',
      dartSdkPath = '/home/mitai/Soft/flutter/bin/dart',
      program = "${workspaceFolder}/lib/main.dart",
      cwd = "${workspaceFolder}",
    }
}
    