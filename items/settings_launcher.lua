local colors = require("colors")
local icons = require("icons")
local settings = require("settings")
local app_icons = require("helpers.app_icons")

sbar.add(
	"item",
	{

		position = "right",
		width = settings.group_paddings
	}
)

local settings =
	sbar.add(
		"item",
		{
			shadown = true,
			position = "right",
			background = {
				border_width = 0,
				border_color = colors.transparent,
				color = colors.bar.bg
			},
			icon = {
				font = { size = 14,
				},
				padding_left = 5,
				string = "􀁗",
				color = colors.lightgray,

			},
			label = {
				drawing = false,
			}

		}
	)

settings:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'iTerm'")
	end
)

local logout =
	sbar.add(
		"item",
		{
			position = "right",
			background = {

				color = colors.transparent

			},
			icon = {
				font = { size = 14,
				},

				string = "􂄼",
				color = colors.lightgray,

			},
			label = {
				drawing = false,
			}

		}
	)

logout:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'ChatGPT'")
	end
)








-- Double border for apple using a single item bracket
sbar.add("bracket", { settings.name, logout.name }, {

	background = {
		position = "left",
		color = colors.bar.bg,
		width = "dynamic",
		border_color = colors.grey,

	}
})
