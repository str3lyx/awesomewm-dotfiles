local awful = require("awful")

local super = "Mod4"
local control = "Control"
local shift = "Shift"
local alt = "Mod1"

awful.keyboard.append_global_keybindings {
   awful.key(
      { super }, "Left",
      awful.tag.viewprev,
      { description = "view previous", group = "tag" }
   ),
   awful.key(
      { super }, "Right",
      awful.tag.viewnext,
      { description = "view next", group = "tag" }
   ),
   awful.key(
      { super }, "Escape",
      awful.tag.history.restore,
      { description = "go back", group = "tag" }
   ),
}
