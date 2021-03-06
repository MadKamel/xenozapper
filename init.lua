
-- Register

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


-- Crafts

-- This mod does not exist, what are you talking about? :D
if minetest.get_modpath("mk_items") then
	minetest.register_craft({
		output = "xenozapper:zapper",
		recipe = {
			{"mk_items:iron_rod", "", "mk_items:iron_rod"},
			{"mk_items:iron_plate", "mk_items:power_supply", "mk_items:iron_plate"},
			{"", "mk_items:iron_frame", ""}
		}
	})
	
	minetest.register_craft({
		output = "xenozapper:basher",
		recipe = {
			{"mk_items:steel_rod", "", "mk_items:steel_rod"},
			{"mk_items:framed_iron_plate", "mk_items:motor", "mk_items:framed_iron_plate"},
			{"", "xenozapper:zapper", ""}
		}
	})
else
	minetest.register_craft({
		output = "xenozapper:zapper",
		recipe = {
			{"default:steel_ingot", "", "default:steel_ingot"},
			{"", "default:copper_ingot", ""},
			{"", "default:steelblock", ""}
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
end


