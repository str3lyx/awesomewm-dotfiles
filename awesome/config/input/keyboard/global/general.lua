local awful = require("awful")
local constant = require("constant")
local hotkeys_popup = require("awful.hotkeys_popup")
local menubar = require("menubar")
local volume = require("utils.volume")

local super = "Mod4"
local shift = "Shift"
local control = "Control"
local alt = "Mod1"

awful.keyboard.append_global_keybindings {
   awful.key(
      { alt }, "F1",
      hotkeys_popup.show_help,
      { description = "show help", group = "awesome" }
   ),
   awful.key(
      { super }, "w",
      function() mymainmenu:show() end,
      { description = "show main menu", group = "awesome" }
   ),
   awful.key(
      { super, control }, "r",
      awesome.restart,
      { description = "reload awesome", group = "awesome" }
   ),
   awful.key(
      { super, shift }, "q",
      awesome.quit,
      { description = "quit awesome", group = "awesome" }
   ),
   awful.key(
      { super }, "x",
      function()
         awful.prompt.run {
            prompt       = "Run Lua code: ",
            textbox      = awful.screen.focused().mypromptbox.widget,
            exe_callback = awful.util.eval,
            history_path = awful.util.get_cache_dir() .. "/history_eval"
         }
      end,
      { description = "lua execute prompt", group = "awesome" }
   ),
   awful.key(
      { super }, "Return",
      function() awful.spawn.easy_async(constant.terminal, function() end) end,
      { description = "open a terminal", group = "launcher" }
   ),
   awful.key(
      { alt }, "F2",
      function() awful.screen.focused().mypromptbox:run() end,
      { description = "run prompt", group = "launcher" }
   ),
   awful.key(
      { super }, "r",
      function() awful.spawn.easy_async("rofi -show drun -show-icons -drun-show-actions", function () end) end,
      { description = "rofi", group = "launcher" }
   ),
   awful.key(
      { super }, "p",
      function() menubar.show() end,
      { description = "show the menubar", group = "launcher" }
   ),
   awful.key(
      { }, "XF86AudioRaiseVolume",
      function () volume.up(2) end,
      { description = "volume up", group = "launcher" }
   ),
   awful.key(
      { }, "XF86AudioLowerVolume",
      function () volume.down(2) end,
      { description = "volume down", group = "launcher" }
   ),
   awful.key(
      { }, "XF86AudioMute",
      function () volume.toggle() end,
      { description = "toggle mute", group = "launcher" }
   )
}
