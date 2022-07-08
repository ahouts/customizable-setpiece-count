name = "Customizable Setpiece Counts"
description = "Gives YOU control over the number of setpieces in YOUR world!"
author = "LazyTitan"
version = "0.1.0"

api_version = 10
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false
all_clients_require_mod = false
client_only_mod = false

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {
    "tweak"
}

local function numerical_options(n, offset, increment)
    local o = offset or 0
    local i = increment or 1
    local d = {}
    for x = 0, n do
        local r = o + i * x
        d[x + 1] = { description = "" .. r, data = r }
    end
    return d
end

configuration_options = {
    {
        name = "ForestOptionalTasks",
        label = "Forest Optional Task Count",
        options = numerical_options(20),
        default = 5,
        hover = "Number of optional forest (surface) tasks to generate"
    },
    {
        name = "ResurrectionStone",
        label = "Resurrection Stone Count",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Resurrection Stones to generate in the forest (surface)"
    },
    {
        name = "WormholeGrass",
        label = "Wormhole Grass Count",
        options = numerical_options(20),
        default = 8,
        hover = "Number of Wormhole Grass to generate in the forest (surface)"
    },
    {
        name = "MooseNest",
        label = "Moose Nets Count",
        options = numerical_options(20),
        default = 9,
        hover = "Number of Moose Nests to generate in the forest (surface)"
    },
    {
        name = "MoonAltarRockGlass",
        label = "Moon Altar Rock Glass Count",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Moon Altar Rock Glass to generate in the forest (surface)"
    },
    {
        name = "MoonAltarRockIdol",
        label = "Moon Altar Rock Idol Count",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Moon Altar Rock Idol to generate in the forest (surface)"
    },
    {
        name = "MoonAltarRockSeed",
        label = "Moon Altar Rock Seed Count",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Moon Altar Rock Seed to generate in the forest (surface)"
    },
    {
        name = "BathbombedHotspring",
        label = "Bathbombed Hotspring Count",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Bathbombed Hotsprings to generate in the forest (surface)"
    },
    {
        name = "MoonFissures",
        label = "Moon Fissure Count",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Moon Fissures to generate in the forest (surface)"
    },
    {
        name = "BrinePool1",
        label = "Brine Pool 1 Count",
        options = numerical_options(20),
        default = 4,
        hover = "Number of Brine Pool 1 to generate in the forest (surface)"
    },
    {
        name = "BrinePool2",
        label = "Brine Pool 2 Count",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Brine Pool 2 to generate in the forest (surface)"
    },
    {
        name = "BrinePool3",
        label = "Brine Pool 3 Count",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Brine Pool 3 to generate in the forest (surface)"
    },
    {
        name = "Waterlogged1",
        label = "Waterlogged 1 Count",
        options = numerical_options(20),
        default = 3,
        hover = "Number of Waterlogged 1 to generate in the forest (surface)"
    },
    {
        name = "CavesOptionalTasks",
        label = "Cave Optional Task Count",
        options = numerical_options(20),
        default = 8,
        hover = "Number of optional cave tasks to generate"
    },
    {
        name = "TentaclePillar",
        label = "Moon Fissure Count",
        options = numerical_options(20, 1, 2),
        default = 1,
        hover = "Number of Moon Fissures to generate in the caves"
    },
    {
        name = "CavesResurrectionStone",
        label = "Resurrection Stone Count (Caves)",
        options = numerical_options(20),
        default = 1,
        hover = "Number of Resurrection Stones to generate in the caves"
    },
}