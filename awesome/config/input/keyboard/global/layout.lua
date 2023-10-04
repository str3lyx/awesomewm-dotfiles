local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

awful.keyboard.append_global_keybindings {
   awful.key(
      { super, shift }, "j",
      function() awful.client.swap.byidx(1) end,
      { description = "swap with next client by index", group = "client" }
   ),
   awful.key(
      { super, shift }, "k",
      function() awful.client.swap.byidx(-1) end,
      { description = "swap with previous client by index", group = "client" }
   ),
   awful.key(
      { super }, "u",
      awful.client.urgent.jumpto,
      { description = "jump to urgent client", group = "client" }
   ),
   awful.key(
      { super }, "l",
      function() awful.tag.incmwfact(0.05) end,
      { description = "increase master width factor", group = "layout" }
   ),
   awful.key(
      { super }, "h",
      function() awful.tag.incmwfact(-0.05) end,
      { description = "decrease master width factor", group = "layout" }
   ),
   awful.key(
      { super, shift }, "h",
      function() awful.tag.incnmaster(1, nil, true) end,
      { description = "increase the number of master clients", group = "layout" }
   ),
   awful.key(
      { super, shift }, "l",
      function() awful.tag.incnmaster(-1, nil, true) end,
      { description = "decrease the number of master clients", group = "layout" }
   ),
   awful.key(
      { super, control }, "h",
      function() awful.tag.incncol(1, nil, true) end,
      { description = "increase the number of columns", group = "layout" }
   ),
   awful.key(
      { super, control }, "l",
      function() awful.tag.incncol(-1, nil, true) end,
      { description = "decrease the number of columns", group = "layout" }
   ),
   awful.key(
      { super }, "space",
      function() awful.layout.inc(1) end,
      { description = "select next layout", group = "layout" }
   ),
   awful.key(
      { super, shift }, "space",
      function() awful.layout.inc(-1) end,
      { description = "select previous layout", group = "layout" }
   ),
}

awful.keyboard.append_global_keybindings {
   awful.key {
      modifiers   = { super },
      keygroup    = "numrow",
      description = "only view tag",
      group       = "tag",
      on_press    = function(index)
         local screen = awful.screen.focused()
         local tag = screen.tags[index]
         if tag then
            tag:view_only()
         end
      end,
   },
   awful.key {
      modifiers   = { super, control },
      keygroup    = "numrow",
      description = "toggle tag",
      group       = "tag",
      on_press    = function(index)
         local screen = awful.screen.focused()
         local tag = screen.tags[index]
         if tag then
            awful.tag.viewtoggle(tag)
         end
      end,
   },
   awful.key {
      modifiers   = { super, shift },
      keygroup    = "numrow",
      description = "move focused client to tag",
      group       = "tag",
      on_press    = function(index)
         if client.focus then
            local tag = client.focus.screen.tags[index]
            if tag then
               client.focus:move_to_tag(tag)
            end
         end
      end,
   },
   awful.key {
      modifiers   = { super, control, shift },
      keygroup    = "numrow",
      description = "toggle focused client on tag",
      group       = "tag",
      on_press    = function(index)
         if client.focus then
            local tag = client.focus.screen.tags[index]
            if tag then
               client.focus:toggle_tag(tag)
            end
         end
      end,
   },
   awful.key {
      modifiers   = { super },
      keygroup    = "numpad",
      description = "select layout directly",
      group       = "layout",
      on_press    = function(index)
         local t = awful.screen.focused().selected_tag
         if t then
            t.layout = t.layouts[index] or t.layout
         end
      end,
   }
}
