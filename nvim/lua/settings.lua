-- Главные
local cmd = vim.cmd             -- execute Vim commands
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

g.loaded_netrw = 1              -- disable netrw at the very start
g.loaded_netrwPlugin = 1

opt.colorcolumn = '80'          -- Разделитель на 80 символов
opt.number = true               -- Включаем нумерацию строк
opt.so = 999                    -- Курсор всегда в центре экрана
opt.undofile = true             -- Возможность отката назад
opt.splitright = true           -- vertical split вправо
opt.splitbelow = true           -- horizontal split вниз
opt.swapfile = false            -- выключить swap file

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menu,menuone,noselect'

--  24-bit RGB colors
opt.termguicolors = true
-- ColorTheme
vim.cmd [[colorscheme tokyonight]]

-- Табы и отступы
cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true      -- use spaces instead of tabs
opt.shiftwidth = 2        -- shift 2 spaces when tab
opt.tabstop = 2           -- 1 tab == 2 spaces
opt.smartindent = false    -- autoindent new lines
