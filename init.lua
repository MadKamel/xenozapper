minetest.register_tool(":default:xenozapper", {
	description = "Zapper",
	inventory_image = "zapper.png",
	wield_image = "zapper.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = "default:xenozapper",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"", "default:copper_ingot", ""},
		{"", "default:steelblock", ""}
	}
})