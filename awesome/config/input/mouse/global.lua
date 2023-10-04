local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

awful.mouse.append_global_mousebindings {
   awful.button({}, 3, function() mymainmenu:toggle() end),
   awful.button({}, 4, awful.tag.viewprev),
   awful.button({}, 5, awful.tag.viewnext),
}
