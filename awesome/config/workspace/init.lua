local ruled = require("ruled")

require("config.workspace.layouts")
require("config.workspace.tags")
require("config.workspace.rules.notification")

-- Rules to apply to new clients.
ruled.client.connect_signal("request::rules", function()
   require("config.workspace.rules.client.global")
   require("config.workspace.rules.client.floating")
   require("config.workspace.rules.client.titlebar")
end)

-- Signals
-- require("config.workspace.signals.sloppy_focus")
require("config.workspace.signals.maximize_fix")
require("config.workspace.signals.round_corner")
require("config.workspace.signals.display_as_notification")
