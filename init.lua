minetest.register_tool("xenozapper:zapper", {
	description = "Xeno-Zapper",
	inventory_image = "zapper.png",
	wield_image = "zapper.png^[transformR90",
	range = 3,
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		damage_groups = {fleshy=3},
	}
})

minetest.register_craft({
	output = "xenozapper:zapper",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"", "default:copper_ingot", ""},
		{"", "default:steelblock", ""}
	}
})



minetest.register_tool("xenozapper:basher", {
	description = "Xeno-Basher",
	inventory_image = "basher_inventory.png",
	wield_image = "basher.png",
	wield_scale = {x=2,y=2,z=1},
	range = 5,
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=1,
		damage_groups = {fleshy=5},
	}
})

minetest.register_craft({
	output = "xenozapper:basher",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:mese_fragment", "default:copper_block", "default:mese_fragment"},
		{"", "xenozapper:zapper", ""}
	}
})
