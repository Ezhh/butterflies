
local butter_list = {
	{"white", "White"},
	{"red", "Red"},
	{"violet", "Violet"}
}

for i in ipairs (butter_list) do
	local name = butter_list[i][1]
	local desc = butter_list[i][2]

	minetest.register_node("butterflies:butterfly_"..name, {
		description = desc.." Butterfly",
		drawtype = "plantlike",
		tiles = {{
			name = "butterflies_butterfly_"..name.."_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3
			},
		}},
		inventory_image = "butterflies_butterfly_"..name..".png",
		wield_image =  "butterflies_butterfly_"..name..".png",
		waving = 1,
		paramtype = "light",
		sunlight_propagates = true,
		buildable_to = true,
		walkable = false,
		groups = {catchable = 1},
		selection_box = {
			type = "fixed",
			fixed = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
		},
		floodable = true,
		on_flood = function(pos, oldnode, newnode)
			minetest.add_item(pos, "butterflies:butterfly_"..name.."1")
		end
	})
end

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	place_offset_y = 1,
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"grassland", "deciduous_forest"},
	y_max = 300,
	y_min = 1,
	decoration = {
		"butterflies:butterfly_white",
		"butterflies:butterfly_red",
		"butterflies:butterfly_violet"
	},
	spawn_by = "group:flower",
	num_spawn_by = 1
})
