require("settings.keybinds")

hl.monitor({
  output = "HDMI-A-1",
  mode = "2560x1440@75",
  position = "0x0",
  scale = 1,
})


hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprsunset & hypridle & udiskie")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

hl.env("XCURSOR_SIZE", "24")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("GDK_BACKEND", "wayland,x11,*")

hl.config({
	input = {
    kb_layout = "us,ru",
    kb_options = "grp:ctrl_space_toggle",
    follow_mouse = 1,
    sensitivity = 0,
	},
})

hl.config({
	misc = {
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
