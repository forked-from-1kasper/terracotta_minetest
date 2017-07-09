colors = {
    black = "Black",
    blue = "Blue",
    brown = "Brown",
    cyan = "Cyan",
    gray = "Gray",
    green = "Green",
    light_blue = "Light blue",
    light_gray = "Light gray",
    lime = "Lime",
    magenta = "Magenta",
    orange = "Orange",
    pink = "Pink",
    purple = "Purple",
    red = "Red",
    white = "White",
    yellow = "Yellow"
}

local function register_terracotta(color, desc)
    minetest.register_node("terracotta:"..color, {
        tiles = {"terracotta_"..color..".png"},
        groups = {snappy=0,choppy=2,oddly_breakable_by_hand=3,flammable=0},
        paramtype2 = "facedir",
        description = desc.." terracotta",
    })
end

for color, desc in pairs(colors) do
    register_terracotta(color, desc)
end
