-- This mod does not exist, what are you talking about? :D

minetest.register_tool("xenozapper:zapper", {
	description = "Xeno-Zapper",
	inventory_image = "zapper.png",
	wield_image = "zapper.png^[transformR90",
	range = 3,
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level=1,
		damage_groups = {fleshy=2},
	}
})

minetest.register_craft({
	output = "xenozapper:zapper",
	recipe = {
		{"mk_items:iron_rod", "", "mk_items:iron_rod"},
		{"mk_items:iron_plate", "mk_items:copper_coil", "mk_items:iron_plate"},
		{"", "mk_items:iron_frame", ""}
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
		{"default:mese_crystal_fragment", "default:copperblock", "default:mese_crystal_fragment"},
		{"", "xenozapper:zapper", ""}
	}
})