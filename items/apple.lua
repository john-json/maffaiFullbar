local colors = require("colors")
local icons = require("icons")
local settings = require("settings")



local apple = sbar.add("item", {
	-- display = 1,
	label = {
		y_offset = 50,
		string = "",
		padding_right = 5,
	},
	icon = {
		padding_left = 10,
		font = {
			size = 16,
		},
		string = icons.apple,
		color = colors.quicksilver,

	},

	background = {

		color = colors.bar.bg,
	},

	click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s 0",
})

apple:subscribe("mouse.entered", function(env)
	local selected = env.SELECTED == "true"
	sbar.animate("elastic", 10, function()
		apple:set({

			label = {
				drawing = false,
				y_offset = -50,
				color = colors.white,
				padding_right = 10,
				string = icons.apple,
				padding_left = 10,
				font = {
					size = 16,
				},
			},
			icon = {
				padding_right = 10,
				padding_left = 10,
				drawing = true,
				color = colors.puce,
				string = icons.apple,
				font = {
					size = 16,
				},

			},
			background = {
				color = colors.transparent,
			},
		})
	end)
end)

apple:subscribe("mouse.exited", function(env)
	sbar.animate("elastic", 10, function()
		apple:set({

			label = {
				drawing = false,
			},

			icon = {
				padding_left = 10,
				font = {
					size = 16,
				},
				string = icons.apple,
				color = colors.icon_active,

			},

			background = {

				color = colors.transparent,
			},

			click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s 0",
		})
	end)
end)
apple:subscribe("mouse.clicked", function(env)
	sbar.animate("elastic", 10, function()
		apple:set({
			label = {
				y_offset = 50,
				string = icons.apple,
				padding_right = 0,
				padding_left = 10,
			},
			icon = {
				drawing = true,
				padding_left = 8,
				font = {
					size = 16,
				},
				string = icons.apple,
				color = colors.icon_active,

			},

			background = {

				color = colors.bar.bg,
			},

			click_script = "$CONFIG_DIR/helpers/menus/bin/menus -s 0",
		})
	end)
end)
