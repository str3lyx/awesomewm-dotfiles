local beautiful = require("beautiful")
local gfs = require("gears").filesystem

-- Themes define colours, icons, font and wallpapers.
beautiful.init(gfs.get_themes_dir() .. "default/theme.lua")
