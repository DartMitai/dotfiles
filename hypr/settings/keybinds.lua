local terminal = "ghostty"
local menu = "hyprlauncher"

local mainMod = "SUPER"
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindow = hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("wleave"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd[[grim -g "$(slurp)" - | wl-copy]])

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + SHIFT + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + " .. 4, hl.dsp.window.move({ workspace = 4 }))
