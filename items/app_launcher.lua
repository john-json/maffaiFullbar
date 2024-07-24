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
			display = 1,
			position = "right",
			background = {

				color = colors.bar

			},
			icon = {
				font = { size = 12,
				},
				padding_right = 5,
				padding_left = 5,
				string = "􀍟",
				color = colors.quicksilver,

			},
			label = {
				drawing = false,
			}

		}
	)

settings:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'System Settings'")
	end
)

local terminal =
	sbar.add(
		"item",
		{
			display = 2,
			shadown = true,
			position = "right",
			background = {
				border_width = 0,
				border_color = colors.transparent,

			},
			icon = {
				font = { size = 12,
				},
				padding_left = 5,
				string = "􀁗",
				color = colors.quicksilver,

			},
			label = {
				drawing = false,
			}

		}
	)

terminal:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'iTerm'")
	end
)

local chat =
	sbar.add(
		"item",
		{
			display = 2,
			position = "right",
			background = {

				color = colors.transparent

			},
			icon = {
				font = { size = 12,
				},
				padding_left = 5,
				string = "􂄼",
				color = colors.quicksilver,

			},
			label = {
				drawing = false,
			}

		}
	)

chat:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'ChatGPT'")
	end
)




local pikka =
	sbar.add(
		"item",
		{
			display = 2,
			position = "right",
			background = {

				color = colors.transparent

			},
			icon = {
				font = { size = 12,
				},
				padding_left = 5,

				string = "􀎙",
				color = colors.quicksilver,

			},
			label = {
				drawing = false,
			}

		}
	)

pikka:subscribe(
	"mouse.clicked",
	function(env)
		sbar.exec("open -a 'Pikka'")
	end
)







-- Double border for apple using a single item bracket
sbar.add("bracket", { chat.name, terminal.name, settings.name, pikka.name }, {

	background = {
		position = "left",
		color = colors.bar.bg2,
		width = "dynamic",
		border_color = colors.transparent,

	}
})
