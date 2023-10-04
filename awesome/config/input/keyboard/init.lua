local awful = require("awful")

awful.spawn.with_shell("setxkbmap -layout us,th -option grp:caps_toggle")
require("config.input.keyboard.client")
require("config.input.keyboard.global.general")
require("config.input.keyboard.global.layout")
require("config.input.keyboard.global.tags")
require("config.input.keyboard.global.focus")
