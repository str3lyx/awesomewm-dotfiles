local awful = require("awful")
local beautiful = require("beautiful")
local constant = require("constant")
local hotkeys_popup = require("awful.hotkeys_popup")

local editor_cmd = constant.terminal .. " -e " .. constant.editor
local myawesomemenu = {
   { "hotkeys",     function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual",      constant.terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart",     awesome.restart },
   { "quit",        function() awesome.quit() end },
}

mymainmenu = awful.menu({
   items = {
      { "awesome",       myawesomemenu,    beautiful.awesome_icon },
      { "open terminal", constant.terminal }
   }
})

return mymainmenu
