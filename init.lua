if minetest.get_modpath("mk_items") then
	dofile(minetest.get_modpath("xenozapper").."/custom.lua")
else
	dofile(minetest.get_modpath("xenozapper").."/default.lua")
end