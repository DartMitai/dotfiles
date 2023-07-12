-- Главные
local g = vim.g                -- global variables
local opt = vim.opt            -- global/buffer/windows-scoped options

g.loaded_netrw = 1             -- disable netrw at the very start
g.loaded_netrwPlugin = 1

opt.encoding = 'utf-8'         --Кодировка
opt.scrolloff = 8              -- Курсор всегда в центре экрана
opt.sidescrolloff = 8
opt.number = true              -- Включаем нумерацию строк
opt.undofile = true            -- Возможность отката назад
opt.splitright = true          -- vertical split вправо
opt.splitbelow = true          -- horizontal split вниз
opt.swapfile = false           -- выключить swap file
opt.shiftwidth = 2             -- shift 2 spaces when tab
opt.tabstop = 2                -- 1 tab = 2 spaces
opt.smarttab = true            -- умный Tab
opt.smartindent = true         -- autoindent new lines
opt.termguicolors = true       --  24-bit RGB colors
opt.foldmethod = 'expr'
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Автодополнение (встроенное в Neovim)
opt.completeopt = 'menu,menuone,noselect'