-- Install Lazynvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({

    -- Color Theme
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('tokyonight')
            vim.cmd([[colorscheme tokyonight]])
        end,
    },

    -- Icons
    'onsails/lspkind-nvim',

    -- Autosave
    {
        'Pocco81/auto-save.nvim',
        config = function()
            require('plugins.auto-save')
        end
    },

    -- Notify
    {
        'rcarriga/nvim-notify',
        config = function()
            require('plugins.notify')
        end
    },

    -- Tabs top
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('plugins.bufferline')
        end
    },

    -- Terminal
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        config = function()
            require('plugins.toggleterm')
        end
    },

    -- Flutter/Dart
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require('plugins.flutter')
        end
    },

    -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('plugins.lualine')
        end
    },

    -- Files Manager
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('plugins.nvim-tree')
        end
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('plugins.treesitter')
        end
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim' },
        config = function()
            require('plugins.telescope')
        end
    },

    -- Git
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns')
        end
    },

    -- Dap-Ui
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
            'mfussenegger/nvim-dap',
            'nvim-neotest/nvim-nio'
        },
        config = function()
            require('plugins.dap')
        end,
    },

    -- BLINK
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = 'rafamadriz/friendly-snippets',

        -- use a release tag to download pre-built binaries
        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept, C-n/C-p for up/down)
            -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys for up/down)
            -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-e: Hide menu
            -- C-k: Toggle signature help
            --
            -- See the full "keymap" documentation for information on defining your own keymap.
            keymap = { preset = 'enter' },

            appearance = {
                -- Sets the fallback highlight groups to nvim-cmp's highlight groups
                -- Useful for when your theme doesn't support blink.cmp
                -- Will be removed in a future release
                use_nvim_cmp_as_default = true,
                -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = 'mono'
            },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            -- Blink.cmp uses a Rust fuzzy matcher by default for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust_with_warning" },

            -- snippets = { preset = 'default' }

            opts_extend = { "sources.default" }
        }
    },
    
    -- AUTOPAIRS
    {
        'saghen/blink.pairs',
        version = '*', -- (recommended) only required with prebuilt binaries

        -- download prebuilt binaries from github releases
        dependencies = 'saghen/blink.download',

        --- @module 'blink.pairs'
        --- @type blink.pairs.Config
        opts = {
            mappings = {
                enabled = true,
                pairs = {
                    ['('] = ')',
                    ['['] = ']',
                    ['{'] = '}',
                    ['<'] = '>',
                },
            },
            highlights = {
                enabled = true,
                groups = {
                    'BlinkPairsOrange',
                    'BlinkPairsPurple',
                    'BlinkPairsBlue',
                },
                priority = 200,
                ns = vim.api.nvim_create_namespace('blink.pairs'),
            },
            debug = false,
        }
    }

    -- Codeium
    -- {
    --     'Exafunction/codeium.vim'
    -- }
})
