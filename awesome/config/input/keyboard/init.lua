local awful = require("awful")
local naughty = require("naughty")

awful.spawn.with_shell("setxkbmap -layout us,th -option grp:caps_toggle")
require("config.input.keyboard.client")
require("config.input.keyboard.global.general")
require("config.input.keyboard.global.layout")
require("config.input.keyboard.global.tags")
require("config.input.keyboard.global.focus")

awful.keygrabber {
    keybindings = {
        awful.key {
            modifiers = { "Mod1" },
            key       = "Tab",
            on_press  = function()
                awful.client.focus.byidx(1)
                if client.focus then client.focus:raise() end
                awesome.emit_signal("tasklist_popup::show")
            end,
            { description = "focus next by index", group = "client" }
        },
        awful.key {
            modifiers = { "Mod1", "Shift" },
            key       = "Tab",
            on_press  = function ()
                awful.client.focus.byidx(-1)
                if client.focus then client.focus:raise() end
                awesome.emit_signal("tasklist_popup::show")
            end
        },
    },
    stop_key           = "Mod1",
    stop_event         = "release",
    stop_callback      = function() awesome.emit_signal("tasklist_popup::hide") end,
    export_keybindings = true,
}