local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font 'JetBrains Mono'
config.font_size = 13.0

config.color_scheme = 'Tokyo Night Storm' -- Tokyo Night Day, Tokyo Night Storm, Tokyo Night Moon

config.colors = {
  cursor_bg = '#e826a1',
}

hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.9

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

return config
