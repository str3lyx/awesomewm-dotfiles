local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

client.connect_signal("request::default_keybindings", function()
   awful.keyboard.append_client_keybindings {
      awful.key(
         { super, }, "f",
         function(c)
            c.fullscreen = not c.fullscreen
            c:raise()
         end,
         { description = "toggle fullscreen", group = "client" }
      ),
      awful.key(
         { super, shift }, "c",
         function(c) c:kill() end,
         { description = "close", group = "client" }
      ),
      awful.key(
         { super, control }, "space",
         awful.client.floating.toggle,
         { description = "toggle floating", group = "client" }
      ),
      awful.key(
         { super, control }, "Return",
         function(c) c:swap(awful.client.getmaster()) end,
         { description = "move to master", group = "client" }
      ),
      awful.key(
         { super, }, "o",
         function(c) c:move_to_screen() end,
         { description = "move to screen", group = "client" }
      ),
      awful.key(
         { super, }, "t",
         function(c) c.ontop = not c.ontop end,
         { description = "toggle keep on top", group = "client" }
      ),
      awful.key(
         { super, }, "n",
         function(c) c.minimized = true end,
         { description = "minimize", group = "client" }
      ),
      awful.key(
         { super, }, "m",
         function(c)
            c.maximized = not c.maximized
            c:raise()
         end,
         { description = "(un)maximize", group = "client" }
      ),
      awful.key(
         { super, control }, "m",
         function(c)
            c.maximized_vertical = not c.maximized_vertical
            c:raise()
         end,
         { description = "(un)maximize vertically", group = "client" }
      ),
      awful.key(
         { super, shift }, "m",
         function(c)
            c.maximized_horizontal = not c.maximized_horizontal
            c:raise()
         end,
         { description = "(un)maximize horizontally", group = "client" }
      ),
   }
end)
