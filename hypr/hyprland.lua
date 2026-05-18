require("settings.keybinds")

hl.monitor({
  output = "HDMI-A-1",
  mode = "2560x1440@75",
  position = "0x0",
  scale = 1,
})


hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpaper & hyprsunset & hypridle & udiskie")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("yandex-browser")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")

hl.config({
	input = {
    kb_layout = "us,ru",
    kb_options = "grp:win_space_toggle",
    follow_mouse = 1,
    sensitivity = 0,
	},
})

hl.config({
	misc = {
		force_default_wallpaper = -1,
    disable_hyprland_logo = false,
    disable_splash_rendering = true,
	},
})

hl.config({
	cursor = {
		inactive_timeout = 10.0,
	},
})

hl.config({
	general = {
    gaps_in = 1,
		gaps_out = 0,
	},
})
