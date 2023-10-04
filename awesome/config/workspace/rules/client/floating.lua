local ruled = require("ruled")
local awful = require("awful")

-- Floating clients.
ruled.client.append_rule {
   id         = "floating",
   rule_any   = {
      instance = { "copyq", "pinentry" },
      class    = {
         "Arandr", "Blueman-manager", "Gpick", "Kruler", "Sxiv",
         "Tor Browser", "Wpa_gui", "veromix", "xtightvncviewer"
      },
      -- Note that the name property shown in xprop might be set slightly after creation of the client
      -- and the name shown there might not match defined rules here.
      name     = {
         "Event Tester",   -- xev.
      },
      role     = {
         "AlarmWindow",     -- Thunderbird's calendar.
         "ConfigManager",   -- Thunderbird's about:config.
         "pop-up",          -- e.g. Google Chrome's (detached) Developer Tools.
      }
   },
   properties = { floating = true }
}
