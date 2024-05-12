local wezterm = require 'wezterm'
local config = {}

config.font_size = 16.0
config.window_close_confirmation = 'NeverPrompt'
config.font = wezterm.font_with_fallback {
    'JetBrains Mono',
    'Nerd Font Symbols',
    'Noto Color Emoji',
    'Noto Sans JP',
}

return config

