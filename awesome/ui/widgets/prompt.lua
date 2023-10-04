local awful = require("awful")

local function init (s)
   s.mypromptbox = awful.widget.prompt()
   return s.mypromptbox
end

return init