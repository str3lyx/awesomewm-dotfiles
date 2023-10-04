local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

client.connect_signal("request::default_mousebindings", function()
   awful.mouse.append_client_mousebindings {
      awful.button({}, 1, function(c)
         c:activate { context = "mouse_click" }
      end),
      awful.button({ super }, 1, function(c)
         c:activate { context = "mouse_click", action = "mouse_move" }
      end),
      awful.button({ super }, 3, function(c)
         c:activate { context = "mouse_click", action = "mouse_resize" }
      end),
   }
end)
