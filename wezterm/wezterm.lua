
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.colors = {
	background = "black",
}

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 18.0

config.freetype_load_target = "Normal"

config.force_reverse_video_cursor = true

-- Configure tabs
-- callback fn (window, pane)
-- Not sure what these right/left status areas are for
config.hide_tab_bar_if_only_one_tab = true

wezterm.on("update-right-status", function(window, _)
	window:set_left_status("")
	window:set_right_status("")
end)

config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

-- window background
config.window_background_opacity = 0.92
-- config.window_background_opacity = 0.86
-- config.window_background_opacity = 1

-- cursor settings
config.cursor_blink_rate = 800
config.cursor_blink_ease_in = "EaseIn"
config.cursor_blink_ease_out = "EaseOut"

-- window customizations, remove title bar
config.window_decorations = "RESIZE"

-- NOTE: This is somehow breaking the key strokes in Wezterm on new M1 mac
-- config.term = "wezterm"

-- cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 300

return config
