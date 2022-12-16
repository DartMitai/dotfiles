local notify = require('notify')
require('flutter-tools').setup {
  debugger = {
    enabled = true,
    run_via_dap = true,
    exception_breakpoints = {},
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
    enabled = true
  },
  dev_tools = {
    autostart = false, -- autostart devtools server if not detected
    auto_open_browser = false, -- Automatically opens devtools in the browser
  },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
    },
    --on_attach = require("config.lsp").on_attach,
    --capabilities = require("config.lsp").capabilities
  },
  settings = {
    showTodos = true,
    completeFunctionCalls = true,
    analysisExcludedFolders = { ".dart_tool", },
    renameFilesWithClasses = "prompt", -- "always"
    enableSnippets = false,
  }
}
