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
    'folke/tokyonight.nvim',

    -- Frendly Snippets
    'rafamadriz/friendly-snippets',

    -- Icons
    'onsails/lspkind-nvim',

    -- Autosave
    {
        'Pocco81/auto-save.nvim',
        config = function()
            require('plugins.auto-save')
        end
    },

    --AUTOPAIRS--
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs')
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
        version = 'v3.*',
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
        dependencies = 'nvim-lua/plenary.nvim',
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
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        version = 'nightly',
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

    --Dap-Ui
    {
        'rcarriga/nvim-dap-ui',
        dependencies = { 'mfussenegger/nvim-dap'},
        config = function()
            require('plugins.dap')
        end,
    },

    -- NVIM-CMP
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp-signature-help'
        },
        config = function()
            require('plugins.cmp')
        end
    },

    -- Tabnine
    {
        'tzachar/cmp-tabnine',
        build = './install.sh',
        dependencies = 'hrsh7th/nvim-cmp',
        config = function()
            require('plugins.tabnine')
        end
    }
})
