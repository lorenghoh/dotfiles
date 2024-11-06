local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Local config
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 13

config.initial_cols = 96
config.initial_rows = 54

config.color_scheme = "github_dimmed"
config.window_padding = {
	bottom = 0,
}

return config
