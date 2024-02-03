-- awesome_mode: api-level=4:screen=on
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local gfs = gears.filesystem
local awful = require("awful")
local menubar = require("menubar")
local constant = require("constant")

require("awful.autofocus")
require("awful.hotkeys_popup.keys")
require("utils.error_handle")
require("utils.garbage_collect")
require("config.appearance")
require("config.workspace")
require("config.input")
require("ui.bar")

-- Autostart
awful.spawn.easy_async_with_shell("sh " .. gfs.get_configuration_dir() .. "autostart", function() end)

-- Menubar configuration
menubar.utils.terminal = constant.terminal

-- Popup
require("ui.popups.tasklist_popup")
