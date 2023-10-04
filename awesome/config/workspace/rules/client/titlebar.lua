local ruled = require("ruled")
local awful = require("awful")

-- Add titlebars to normal clients and dialogs
ruled.client.append_rule {
   id         = "titlebars",
   rule_any   = { type = { "normal", "dialog" } },
   except     = { requests_no_titlebar = true },
   properties = { titlebars_enabled = true }
}
