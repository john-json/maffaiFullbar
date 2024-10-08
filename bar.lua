local colors = require("colors")
local settings = require("settings")

-- Equivalent to the --bar domain
sbar.bar(
    {

        topmost = "window",
        height = 45,
        color = colors.bar.bg,
        padding_right = 0,
        padding_left = 0,
        margin = 80,
        corner_radius = 8,
        y_offset = 10,
        shadow = true,
        blur_radius = 10,
    }
)
