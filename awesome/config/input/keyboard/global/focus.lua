local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

awful.keyboard.append_global_keybindings {
   awful.key(
      { alt }, "Tab",
      function() awful.client.focus.byidx(1) end,
      { description = "focus next by index", group = "client" }
   ),
   awful.key(
      { alt, shift }, "Tab",
      function() awful.client.focus.byidx(-1) end,
      { description = "focus previous by index", group = "client" }
   ),
   awful.key(
      { super }, "Tab",
      function()
         awful.client.focus.history.previous()
         if client.focus then
            client.focus:raise()
         end
      end,
      { description = "go back", group = "client" }
   ),
   awful.key(
      { super, control }, "j",
      function() awful.screen.focus_relative(1) end,
      { description = "focus the next screen", group = "screen" }
   ),
   awful.key(
      { super, control }, "k",
      function() awful.screen.focus_relative(-1) end,
      { description = "focus the previous screen", group = "screen" }
   ),
   awful.key(
      { super, control }, "n",
      function()
         local c = awful.client.restore()
         -- Focus restored client
         if c then
            c:activate { raise = true, context = "key.unminimize" }
         end
      end,
      { description = "restore minimized", group = "client" }
   ),
}
