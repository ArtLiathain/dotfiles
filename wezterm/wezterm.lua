local wezterm = require 'wezterm'
local constants = require 'constants'
local config = wezterm.config_builder()
local commands = require 'commands'
-- Font settings
config.font_size = 12
config.line_height = 1

-- Colors
config.colors = {
  cursor_bg = 'white',
  cursor_border = 'white',
}

-- Appearance
config.window_decorations = 'NONE'
config.hide_tab_bar_if_only_one_tab = true
config.window_background_image = constants.bg_image

config.max_fps = 120

-- Commands
wezterm.on('augment-command-palette', function()
  return commands
end)
return config
