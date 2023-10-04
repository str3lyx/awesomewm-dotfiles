local awful = require("awful")


local function up (vol)
    vol = vol or 2
    awful.spawn.easy_async("pamixer -u && pamixer -i " .. vol, function()
        awesome.emit_signal("volume::up", {
            volume = 0,
            diff = vol
        })
    end)
end

local function down (vol)
    vol = vol or 2
    awful.spawn.easy_async("pamixer -u && pamixer -d " .. vol, function()
        awesome.emit_signal("volume::down", {
            volume = 0,
            diff = vol
        })
    end)
end

local function mute ()
    awful.spawn.easy_async("pamixer -m", function()
        awesome.emit_signal("volume::mute")
    end)
end

local function unmute ()
    awful.spawn.easy_async("pamixer -u", function()
        awesome.emit_signal("volume::unmute")
    end)
end

local function toggle ()
    awful.spawn.easy_async("pamixer -t", function()
        
    end)
end

return {
    up = up,
    down = down,
    mute = mute,
    unmute = unmute,
    toggle = toggle
}
