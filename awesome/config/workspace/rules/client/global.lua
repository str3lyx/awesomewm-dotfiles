local ruled = require("ruled")
local awful = require("awful")

-- All clients will match this rule.
ruled.client.append_rule {
   id         = "global",
   rule       = {},
   properties = {
      focus     = awful.client.focus.filter,
      raise     = true,
      screen    = awful.screen.preferred,
      placement = awful.placement.centered + awful.placement.no_offscreen
   }
}
