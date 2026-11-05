-- **************************************************************
--  wezterm.lua
-- **************************************************************

local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- ** Font ******************************************************
config.adjust_window_size_when_changing_font_size = false
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" })
config.font_size = 14.0
config.cell_width = 1.0
config.line_height = 1.0

-- ** Theme *****************************************************
config.color_schemes = {
	["Alabaster Dark"] = {
		foreground = "#cecece",
		background = "#000000",

		cursor_fg = "#000000",
		cursor_bg = "#cd974b",
		cursor_border = "#cd974b",

		ansi = {
			"#000000",
			"#e25d56",
			"#73ca50",
			"#e9bf57",
			"#4a88e4",
			"#915caf",
			"#23acdd",
			"#cecece",
		},

		brights = {
			"#777777",
			"#f36868",
			"#88db3f",
			"#f0bf7a",
			"#6f8fdb",
			"#e987e9",
			"#4ac9e2",
			"#ffffff",
		},
	},
}

-- local mocha = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
-- mocha.background = "#000000"
-- mocha.tab_bar.background = "#000000"
-- mocha.tab_bar.inactive_tab.bg_color = "#0a0a0a"
-- mocha.tab_bar.new_tab.bg_color = "#0a0a0a"
-- mocha.tab_bar.background = "#040404"
-- mocha.tab_bar.inactive_tab.bg_color = "#0f0f0f"
-- mocha.tab_bar.new_tab.bg_color = "#080808"
--
-- config.color_schemes = { ["MochaNight"] = mocha }
config.color_scheme = "Alabaster Dark"

-- ** Background opacity + blur *********************************
config.window_background_opacity = 0.75
config.macos_window_background_blur = 20
config.wayland_window_background_blur = true
config.win32_system_backdrop = "Acrylic"

-- ** Padding ***************************************************
config.window_padding = {
	left = 12,
	right = 12,
	top = 12,
	bottom = 12,
}

-- ** Window chrome *********************************************
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.show_new_tab_button_in_tab_bar = false

-- ** Cursor ****************************************************
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 500
config.force_reverse_video_cursor = true

-- ** Scrollback ************************************************
config.scrollback_lines = 10000

-- ** Bell ******************************************************
config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_duration_ms = 0,
	fade_out_duration_ms = 0,
}

-- ** Performance ***********************************************
config.animation_fps = 240
config.max_fps = 240
config.front_end = "WebGpu"

-- ** Misc ******************************************************
config.automatically_reload_config = true

-- Load the theme rotator plugin
-- local theme_rotator = wezterm.plugin.require("https://github.com/koh-sh/wezterm-theme-rotator")
-- -- Plugin configuration (customize key bindings)
-- theme_rotator.apply_to_config(config, {
-- 	-- Customize "Next Theme" key
-- 	next_theme_key = "n",
-- 	next_theme_mods = "ALT|SHIFT",
--
-- 	-- Customize "Previous Theme" key
-- 	prev_theme_key = "p",
-- 	prev_theme_mods = "ALT|SHIFT",
--
-- 	-- Customize "Random Theme" key
-- 	random_theme_key = "r",
-- 	random_theme_mods = "ALT|SHIFT",
--
-- 	-- Customize "Default Theme" key
-- 	default_theme_key = "d",
-- 	default_theme_mods = "ALT|SHIFT",
-- })

-- ** Binds *****************************************************
-- Configurar una tecla líder (Ej: Ctrl + Espacio)
-- config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }

-- config.keys = {
-- 	{
-- 		key = "=",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
-- 	},
-- 	{
-- 		key = "-",
-- 		mods = "LEADER",
-- 		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
-- 	},
--
-- 	{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
-- 	{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
-- 	{ key = "UpArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
-- 	{ key = "DownArrow", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
-- 	-- { key = "h", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
-- 	-- { key = "l", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
-- 	-- { key = "k", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Up") },
-- 	-- { key = "j", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Down") },
--
-- 	{
-- 		key = "x",
-- 		mods = "LEADER",
-- 		action = wezterm.action.CloseCurrentPane({ confirm = true }),
-- 	},
-- }

return config
