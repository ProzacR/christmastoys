
-- kubo pavadinimas
--minetest.register_node("gdecor:pavadinimas", {
-- kubo tekstura textures folderyje kuri yra
--        tiles = {"pavadinimas.png"},
-- cia nebutina:
--        drawtype = "glasslike",
--	paramtype = "light",
--	sunlight_propagates = true,
--        groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
--      sounds = default.node_sound_glass_defaults(),
--})

--sukurti recepta kaip gaminti ta bloka
--minetest.register_craft({
--bloko kuris bus pagamintas pavadinimas
--	output = 'gdecor:pavadinimas',
--receptas
--	recipe = {
--		{'default:dirt', 'default:gravel'},
--		{'default:gravel', 'default:dirt'},
--	}
--})


minetest.register_node("christmastoys:ck", {
        tiles = {"ck.png"},
})

minetest.register_tool("christmastoys:tool_toy_ball_blue", {
        description = "Toy Ball Blue",
        inventory_image = "toy_ball_blue.png",

--        on_use = function(itemstack, user, pointed_thing)
--                return hoe_on_use(itemstack, user, pointed_thing, 220)
--        end,
})

--
minetest.register_node("christmastoys:toy_ball_blue", {
        drawtype = "plantlike",
        tiles = {"toy_ball_blue.png"},
        wield_image = "toy_ball_blue.png",
	sunlight_propagates = true,
	paramtype = "light",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	description = "Toy Ball Blue",
})


minetest.register_node("christmastoys:toy_ball_red", {
        drawtype = "plantlike",
        tiles = {"toy_ball_red.png"},
        wield_image = "toy_ball_red.png",
	sunlight_propagates = true,
	paramtype = "light",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	description = "Toy Ball Red",
})

minetest.register_node("christmastoys:toy_ball_green", {
        drawtype = "plantlike",
        tiles = {"toy_ball_green.png"},
        wield_image = "toy_ball_green.png",
	sunlight_propagates = true,
	paramtype = "light",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	description = "Toy Ball Green",
})

minetest.register_node("christmastoys:golden_star", {
        drawtype = "plantlike",
        tiles = {"golden_star.png"},
        wield_image = "golden_star.png",
	sunlight_propagates = true,
	paramtype = "light",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	description = "Golden Star",
})

minetest.register_tool("christmastoys:circle_glass", {
        drawtype = "glasslike",
        tiles = {"circle_glass.png"},
        wield_image = "circle_glass.png",
	sunlight_propagates = true,
	paramtype = "light",
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=0},
	description = "Circle glass",
        inventory_image = "circle_glass.png",
})

--CRAFTING:

minetest.register_craft({
	output = "christmastoys:circle_glass 8",
	recipe = {
		{"", "default:glass", ""},
		{"default:glass", "", "default:glass"},
		{"", "default:glass", ""},
	}
})

minetest.register_craft({
	output = "christmastoys:toy_ball_blue 4",
	recipe = {
		{"", "dye:blue", ""},
		{"dye:blue", "christmastoys:circle_glass", "dye:blue"},
		{"", "dye:blue", ""},
	}
})

minetest.register_craft({
	output = "christmastoys:toy_ball_green 4",
	recipe = {
		{"", "dye:green", ""},
		{"dye:green", "christmastoys:circle_glass", "dye:green"},
		{"", "dye:green", ""},
	}
})

minetest.register_craft({
	output = "christmastoys:toy_ball_red 4",
	recipe = {
		{"", "dye:red", ""},
		{"dye:red", "christmastoys:circle_glass", "dye:red"},
		{"", "dye:red", ""},
	}
})

minetest.register_craft({
	output = "christmastoys:golden_star",
	recipe = {
		{"", "moreores:gold_ingot", ""},
		{"moreores:gold_ingot", "dye:red", "moreores:gold_ingot"},
		{"moreores:gold_ingot", "default:stone", "moreores:gold_ingot"},
	}
})