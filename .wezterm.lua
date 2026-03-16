-- PULL in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

config.font_size = 19
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

return config
