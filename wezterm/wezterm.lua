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
config.font = wezterm.font("MonoLisa", { weight = 300 })
config.font_size = 16
config.font_shaper = "Harfbuzz"
config.harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" }
-- config.font_rules = {
-- 	{
-- 		italic = true,
-- 		font = wezterm.font("Monaspace Radon Var"),
-- 	},
-- }

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"

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
