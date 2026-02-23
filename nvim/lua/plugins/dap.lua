local dap = require("dap")
local dapui = require("dapui")
dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint', { text = '🔴' })

--Start debugging session
-- vim.keymap.set("n", "<F4>", function()
--   dap.continue()
--   ui.toggle({})
--   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false) -- Spaces buffers evenly
-- end)

-- Set breakpoints, get variable values, step into/out of functions, etc.
vim.keymap.set("n", "<F5>", dap.continue)
vim.keymap.set("n", "<F6>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F7>", dap.step_over)
vim.keymap.set("n", "<F8>", dap.step_into)
vim.keymap.set("n", "<F9>", dap.step_out)
vim.keymap.set("n", "<F12>", dap.close, { desc = "DAP: Close" })

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch dart",
    dartSdkPath = "/home/mitai/dev/flutter/bin/dart",
    flutterSdkPath = "/home/mitai/dev/flutter/bin/flutter",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}",
  },
  {
    type = "flutter",
    request = "launch",
    name = "Launch flutter",
    dartSdkPath = "/home/mitai/dev/flutter/bin/dart",
    flutterSdkPath = "/home/mitai/dev/flutter/bin/flutter",
    program = "${workspaceFolder}/lib/main.dart",
    cwd = "${workspaceFolder}"
  },
}

dap.adapters.dart = {
  type = 'executable',
  command = 'dart',
  args = { 'debug_adapter' },
  options = {
    detached = false,
  }
}
dap.adapters.flutter = {
  type = 'executable',
  command = 'flutter',
  args = { 'debug_adapter' },
  options = {
    detached = false,
  }
}
