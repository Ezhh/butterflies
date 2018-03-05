
minetest.register_node("butterflies:butterfly", {
	description = "Butterfly",
	drawtype = "plantlike",
	tiles = {{
		name = "butterflies_butterfly_animated.png",
		animation = {
			type = "vertical_frames",
			aspect_w = 16,
			aspect_h = 16,
			length = 3
		},
	}},
	inventory_image = "butterflies_butterfly.png",
	wield_image =  "butterflies_butterfly.png",
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
		minetest.add_item(pos, "butterflies:butterfly 1")
	end
})


