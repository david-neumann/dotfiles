-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font = wezterm.font("MonoLisa")
config.font_size = 16

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Frappe"

-- Pane selection
config.keys = {
	{
		key = "UpArrow",
		mods = "CTRL",
		action = wezterm.action.PaneSelect,
	},
}

-- and finally, return the configuration to wezterm
return config
