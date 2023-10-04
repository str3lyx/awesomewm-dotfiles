local gears = require("gears")


client.connect_signal("request::manage", function(c)
   if not c.maximized then
      c.shape = function (cr, w, h)
         local radius = c.requests_no_titlebar and 10 or 5
         return gears.shape.rounded_rect(cr, w, h, radius)
      end
   end
end)
