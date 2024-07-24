local settings = require("settings")
local colors = require("colors")


sbar.add("item", "calendar.padding", {
    position = "right",
    width = settings.group_paddings
})

local cal =
    sbar.add(
        "item",
        {
            display = 1,
            position = "center",
            label = {
                padding_right = 10,
                padding_left = 5,
                background = {
                    corner_radius = 50,
                    color = colors.bar.bg2,
                    height = 24

                },
                color = colors.puce,
                font = {

                    style = settings.font.style_map["Bold"],
                    size = 14
                }
            },
            icon = {
                padding_left = 10,
                padding_right = 10,
                align = "laft",
                color = colors.foreground_light,
                font = {
                    style = settings.font.style_map["Regualr"],
                    size = 12
                }
            },
            update_freq = 30,
            background = {
                border_width = 0,
                border_color = colors.bar.border,
                corner_radius = 50,

                -- color = colors.bar.transparent,
                color = colors.bar.bg2
                ,

            },
            blur_radius = 10,
            color = colors.bar.bg2,
            width = "dynamic",

        }

    )

cal:subscribe(
    { "forced", "routine", "system_woke" },
    function(env)
        cal:set(
            {
                icon = os.date("%a %d  􀜞"),
                label = os.date("%H:%M")
                -- icon = os.date("%a.%d %b. %H"),
            }
        )
    end
)

cal:subscribe(
    "mouse.clicked",
    function(env)
        sbar.exec("open -a 'Calendar'")
    end
)
