local awful = require("awful")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

local function init(s)
   return awful.widget.taglist {
      screen  = s,
      filter  = awful.widget.taglist.filter.all,
      buttons = {
         awful.button({}, 1, function(t) t:view_only() end),
         awful.button({ super }, 1, function(t)
            if client.focus then
               client.focus:move_to_tag(t)
            end
         end),
         awful.button({}, 3, awful.tag.viewtoggle),
         awful.button({ super }, 3, function(t)
            if client.focus then
               client.focus:toggle_tag(t)
            end
         end),
         awful.button({}, 4, function(t) awful.tag.viewprev(t.screen) end),
         awful.button({}, 5, function(t) awful.tag.viewnext(t.screen) end),
      }
   }
end

return init
