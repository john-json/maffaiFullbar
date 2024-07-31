local settings = require("settings")
local colors = require("colors")

sbar.default(
	{

		updates = "when_shown",
		icon = {

			color = colors.quicksilver,
			font = {
				family = settings.font.text,
				style = settings.font.style_map.Bold,
				size = 12.0
			},
		},
		label = {
			padding_left = settings.paddings,
			padding_right = settings.paddings,
			font = {
				family = settings.font.text,
				style = settings.font.style_map.SemiBold,
				size = 12.0
			},
			color = colors.bar.foreground
		},
		background = {
			shadow = true,
			border_width = 0.5,
			border_color = colors.bar.border,
			height = 32,
			corner_radius = 8,

			image = {
				corner_radius = 8
			},



		},
		popup = {
			padding_left = 10,
			padding_right = 10,
			icon = { drawing = true, },
			label = {

				font = {
					family = settings.font.text,
					style = settings.font.style_map.SemiBold,
					size = 12.0
				},
				color = colors.bar.foreground
			},
			background = {
				border_width = 1,
				border_color = colors.popup.border,
				corner_radius = 8,
				color = colors.popup.bg,
				shadow = {
					drawing = true
				},
			},
			blur_radius = 90
		},
		padding_right = settings.group_paddings,
		padding_left = settings.group_paddings,
		scroll_texts = true
	}
)
