local colors = require("colors")
local icons = require("icons")
local settings = require("settings")
local app_icons = require("helpers.app_icons")

local space_colors = {


	colors.nickel,  -- Color for space 1
	colors.rocket,  -- Color for space 2
	colors.puce,    -- Color for space 4
	colors.magenta, -- Color for space 5
	colors.deep,    -- Color for space 6
	colors.nickelblue, -- Color for space 7
	colors.auro,    -- Color for space 8
	colors.rocket,  -- Color for space 9
	colors.pastel,  --Color for Space 10
	colors.orange,  -- Color for space 0



}


local function getSpaceColor(spaceNumber)
	return space_colors[spaceNumber]
end

local sf_icons_active = {
	"1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
	-- "􀝜", "􀝜", "􀝜", "􀝜", "􀝜", "􀝜", "􀝜", "􀝜", "􀝜", "􀝜",
}

local sf_icons_inactive = {
	" ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
	-- "􁹨", "􁹨", "􁹨", "􁹨", "􁹨", "􁹨", "􁹨", "􁹨", "􁹨", "􁹨",
}

local function getSpaceIcon(space, active, app_name)
	if active then
		return sf_icons_active[space]
	else
		return sf_icons_inactive[space]
	end
end

local spaces = {}

local function log(message)
	os.execute('echo "' .. message .. '" >> /tmp/sketchybar.log')
end

local function switchToSpace(spaceNumber)
	local scriptPath = string.format('"$CONFIG_DIR/items/scripts/switchSpace/switchToSpace%d.scpt"', spaceNumber)
	log("Switching to space: " .. spaceNumber .. " with script: " .. scriptPath)
	local command = "osascript " .. scriptPath
	log("Executing command: " .. command)
	local result = os.execute(command)
	log("Result: " .. tostring(result))
end

-- Create space items
for i = 1, 10, 1 do
	local space = sbar.add("space", "space." .. i, {
		bar = "left_bar",
		space = i,
		position = "left",
		label = { drawing = false },
		icon = {
			padding_left = 5,
			padding_right = 5,
		},
		background = {
			corner_radius = 25,
		},
	})
	spaces[i] = space

	space:subscribe("front_app_switched", function(env)
		local selected = env.SELECTED == "true"
		sbar.animate("elastic", 10, function()
			space:set({
				label = { drawing = false },
				icon = {
					string = selected and getSpaceIcon(i, true) or getSpaceIcon(i, false),
					color = selected and colors.foreground_dark or colors.transparent,
					padding_left = selected and 6 or 3,
					padding_right = selected and 6 or 3,
					font = { size = selected and 12 or 10 },
				},
				background = {
					y_offset = 0,
					padding_left = selected and 10 or 12,
					padding_right = selected and 10 or 12,
					drawing = true,
					height = selected and 18 or 7,
					color = getSpaceColor(i)

				},

			})
		end)
	end)

	space:subscribe("mouse.entered", function(env)
		local selected = env.SELECTED == "true"
		sbar.animate("elastic", 10, function()
			space:set({
				label = { drawing = false },

				icon = {
					string = selected and "􀅼" or "􀄳",
					color = getSpaceColor(i),
				},
				background = {
					y_offset = -50,
					height = 8,
					color = colors.white,
					drawing = false,

				},
			})
		end)
	end)

	space:subscribe("mouse.exited", function(env)
		local selected = env.SELECTED == "true"
		sbar.animate("elastic", 10, function()
			space:set({
				label = { drawing = false },
				icon = {
					string = selected and getSpaceIcon(i, true) or getSpaceIcon(i, false),
					color = selected and colors.foreground_dark or colors.transparent,
					padding_left = selected and 6 or 3,
					padding_right = selected and 6 or 3,
					font = { size = selected and 12 or 10 },
				},
				background = {
					y_offset = 0,
					padding_left = selected and 10 or 12,
					padding_right = selected and 10 or 12,
					drawing = true,
					height = selected and 18 or 7,
					color = getSpaceColor(i)

				},
			})
		end)
	end)

	space:subscribe("mouse.clicked", function(env)
		local selected = env.SELECTED == "true"
		log("Clicked space: " .. i)
		switchToSpace(i)
		local new_space = sbar.add("item", {
			icon = {
				click_script = selected and sbar.exec('osascript "$CONFIG_DIR/items/scripts/newSpace.scpt"'),
			},

		})
	end)
end



local space_names = {}
for i = 1, 10 do
	table.insert(space_names, spaces[i].name)
end
sbar.add("bracket", space_names, {

	background = {
		height = 26,
		corner_radius = 25,
		color = colors.bar.bg2,
		width = "dynamic"

	},
})
