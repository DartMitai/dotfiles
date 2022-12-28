-- Главные
local cmd = vim.cmd             -- execute Vim commands
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

g.loaded_netrw = 1              -- disable netrw at the very start
g.loaded_netrwPlugin = 1

opt.encoding = 'utf-8'          --Кодировка
opt.colorcolumn = '80'          -- Разделитель на 80 символов
opt.number = true               -- Включаем нумерацию строк
opt.scrolloff = 8               -- Курсор всегда в центре экрана
opt.sidescrolloff = 8
opt.undofile = true             -- Возможность отката назад
opt.splitright = true           -- vertical split вправо
opt.splitbelow = true           -- horizontal split вниз
opt.swapfile = false            -- выключить swap file
opt.expandtab = true            -- use spaces instead of tabs
opt.shiftwidth = 2              -- shift 2 spaces when tab
opt.tabstop = 2                 -- 1 tab == 2 spaces
opt.smartindent = true          -- autoindent new lines
opt.termguicolors = true        --  24-bit RGB colors

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menu,menuone,noselect'

-- ColorTheme
vim.cmd [[colorscheme tokyonight]]

-- Neovide
opt.guifont = 'JetBrainsMono_Nerd_Font_Mono:h13'
g.neovide_transparency = 0.7
g.neovide_remember_window_size = 'v:true'
g.neovide_cursor_animation_length = 0