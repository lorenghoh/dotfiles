local wezterm = require("wezterm")
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Local config
config.font = wezterm.font("FiraCode Nerd Font")

config.color_scheme = "github_dimmed"
config.window_padding = {
	bottom = 0,
}
config.check_for_updates = false

return config
