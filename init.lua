colors = {
    black = { name = "Black", dye = "dye:black" },
    blue = { name = "Blue", dye = "dye:blue" },
    brown = { name = "Brown", dye = "dye:brown" },
    cyan = { name = "Cyan", dye = "dye:cyan" },
    gray = { name = "Gray", dye = "default:stone" },
    green = { name = "Green", dye = "dye:green" },
    light_blue = { name = "Light blue", dye = "terracotta:blue" },
    light_gray = { name = "Light gray", dye = "terracotta:gray" },
    lime = { name = "Lime", dye = "terracotta:green" },
    magenta = { name = "Magenta", dye = "dye:magenta" },
    orange = { name = "Orange", dye = "dye:orange" },
    pink = { name = "Pink", dye = "dye:pink" },
    purple = { name = "Purple", dye = "terracotta:pink" },
    red = { name = "Red", dye = "dye:red" },
    white = { name = "White", dye = "dye:white" },
    yellow = { name = "Yellow", dye = "dye:yellow" }
}

local function register_terracotta(color, desc)
    minetest.register_node("terracotta:"..color, {
        tiles = {"terracotta_"..color..".png"},
        groups = {snappy=0,choppy=2,oddly_breakable_by_hand=3,flammable=0},
        paramtype2 = "facedir",
        description = desc.name.." terracotta",
    })
    minetest.register_craft({
        type = "shapeless",
        output = "terracotta:"..color,
        recipe = { "default:stone", desc.dye }
    })
end

for color, desc in pairs(colors) do
    register_terracotta(color, desc)
end
