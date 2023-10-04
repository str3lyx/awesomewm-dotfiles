local awful = require("awful")
local wibox = require("wibox")
local widgets = require("ui.widgets")

screen.connect_signal("request::desktop_decoration", function (s)
   awful.wibar {
      position = "top",
      screen   = s,
      widget   = {
         layout = wibox.layout.align.horizontal,
         {
            -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            widgets.launcher,
            widgets.taglist(s),
            widgets.promp(s),
         },
         {
            -- Middle widget
            layout = wibox.layout.fixed.horizontal,
            widgets.tasklist(s),
         },

         {
            -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            awful.widget.keyboardlayout(),
            wibox.widget.systray(),
            wibox.widget.textclock(),
            widgets.layoutbox(s),
         },
      }
   }
end)
