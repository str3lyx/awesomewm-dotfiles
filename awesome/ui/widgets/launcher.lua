local awful = require("awful")
local beautiful = require("beautiful")
local mainmenu = require("ui.menus").mainmenu

return awful.widget.launcher {
   image = beautiful.awesome_icon,
   menu = mainmenu
}
