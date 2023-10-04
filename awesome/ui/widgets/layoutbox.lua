local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

local function init (s)
   return awful.widget.layoutbox {
      screen  = s,
      buttons = {
         awful.button({}, 1, function() awful.layout.inc(1) end),
         awful.button({}, 3, function() awful.layout.inc(-1) end),
         awful.button({}, 4, function() awful.layout.inc(-1) end),
         awful.button({}, 5, function() awful.layout.inc(1) end),
      }
   }
end

return init
