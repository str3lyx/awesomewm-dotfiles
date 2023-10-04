-- Maximized Fix
client.connect_signal("request::manage", function(c)
   c.maximized = not c.maximized
   c.maximized = not c.maximized
end)
