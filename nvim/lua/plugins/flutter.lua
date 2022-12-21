local notify = require('notify')
require('flutter-tools').setup ({
  debugger = {
    enabled = true,
    run_via_dap = true,
    exception_breakpoints = {}
  },
  ui = {
    -- the border type to use for all floating windows, the same options/formats
    -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
    border = "rounded",
    -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
    -- please note that this option is eventually going to be deprecated and users will need to
    -- depend on plugins like `nvim-notify` instead.
    notification_style = notify
  },
  widget_guides = {
    enabled = true,
    debug = true
  },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = true, -- highlight the background
      virtual_text = false, -- show the highlight using virtual text
    },
  },
  settings = {
    showTodos = true,
    completeFunctionCalls = true,
    analysisExcludedFolders = { ".dart_tool", },
    renameFilesWithClasses = "prompt",
  }
})
