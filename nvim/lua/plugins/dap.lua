local M = {}

function M.setup()
  local fn = vim.fn

  local map = vim.api.nvim_set_keymap
  local default_opts = { noremap = true, silent = true }

  local function dap() return require('dap') end

  local function repl_toggle() dap().repl.toggle(nil, 'botright split') end

  local function continue() dap().continue() end

  local function step_out() dap().step_out() end

  local function step_into() dap().step_into() end

  local function step_over() dap().step_over() end

  local function run_last() dap().run_last() end

  local function toggle_breakpoint() dap().toggle_breakpoint() end

  local function set_breakpoint() dap().set_breakpoint(fn.input('Breakpoint condition: ')) end

  local function log_breakpoint() dap().set_breakpoint(nil, nil, fn.input('Log point message: ')) end

  map('bp', toggle_breakpoint, 'dap: toggle breakpoint')
  map('lb', log_breakpoint, 'dap: log breakpoint')
  map('scp', set_breakpoint, 'dap: set conditional breakpoint')
  map('sd', continue, 'dap: continue or start debugging')
  map('so', step_out, 'dap: step out')
  map('si', step_into, 'dap: step into')
  map('sO', step_over, 'dap: step over')
  map('dl', run_last, 'dap REPL: run last')
  map('dt', repl_toggle, 'dap REPL: toggle')
end

function M.config()
  local fn, icons = vim.fn, style.icons

  require('dap') -- Dap must be loaded before the signs can be tweaked

  require('as.highlights').plugin('dap', {
    { DapBreakpoint = { foreground = as.style.palette.light_red } },
    { DapStopped = { foreground = as.style.palette.green } },
  })

  fn.sign_define({
    {
      name = 'DapBreakpoint',
      text = icons.misc.bug,
      texthl = 'DapBreakpoint',
      linehl = '',
      numhl = '',
    },
    {
      name = 'DapStopped',
      text = icons.misc.bookmark,
      texthl = 'DapStopped',
      linehl = '',
      numhl = '',
    },
  })

  -- DON'T automatically stop at exceptions
  -- dap.defaults.fallback.exception_breakpoints = {}
end

return M
