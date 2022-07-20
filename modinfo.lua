name = "Extra Worldgen Customization Options"
description = "Allows you to customize various fixed assets in the world."
author = "LazyTitan"
version = "0.1.2"

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
    "tweak",
    "worldgen",
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
        label = "Extra Forest Biomes",
        options = numerical_options(20),
        default = 5,
        hover = "Number of Extra Forest Biomes to generate"
    },
    {
        name = "ResurrectionStone",
        label = "Touch Stones",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Touch Stones to generate on the surface"
    },
    {
        name = "WormholeGrass",
        label = "Wormholes",
        options = numerical_options(20, 0, 2),
        default = 8,
        hover = "The number of Wormholes in that generate on the surface."
    },
    {
        name = "MooseNest",
        label = "Moose/Goose Nets",
        options = numerical_options(20),
        default = 9,
        hover = "Number of Moose/Goose Nests to generate on the surface."
    },
    {
        name = "MoonAltarRockGlass",
        label = "Celestial Altar Base",
        options = numerical_options(20),
        default = 1,
        hover = "Minimum 1 to fight Celestial Guardian",
    },
    {
        name = "MoonAltarRockIdol",
        label = "Celestial Altar Idol",
        options = numerical_options(20),
        default = 1,
        hover = "Minimum 1 to fight Celestial Guardian"
    },
    {
        name = "MoonAltarRockSeed",
        label = "Celestial Altar Orb",
        options = numerical_options(20),
        default = 1,
        hover = "Minimum 1 to fight Celestial Guardian"
    },
    {
        name = "BathbombedHotspring",
        label = "Bath Bomb Set Piece",
        options = numerical_options(20),
        default = 1,
        hover = "The number of Bath Bomb set pieces to spawn on the Lunar Island"
    },
    {
        name = "MoonFissures",
        label = "Celestial Fissure Triangle",
        options = numerical_options(20),
        default = 1,
        hover = "Minimum 1 to fight Celestial Guardian"
    },
    {
        name = "BrinePool1",
        label = "Small Salt Biome",
        options = numerical_options(20),
        default = 4,
        hover = "Number of Small Salt Biomes (10 Salt Stacks) generate in the ocean"
    },
    {
        name = "BrinePool2",
        label = "Large Ladle Salt Biome",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Large Ladle Salt Biomes (22 Salt Stacks) generate in the ocean"
    },
    {
        name = "BrinePool3",
        label = "Medium Helix Salt Biome",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Medium Helix Salt Biome (19 Salt Stacks) generate in the ocean"
    },
    {
        name = "Waterlogged1",
        label = "Waterlogged Biome",
        options = numerical_options(20),
        default = 3,
        hover = "Number of Waterlogged Biomes to spawn in the ocean"
    },
    {
        name = "CavesOptionalTasks",
        label = "Extra Cave Biomes",
        options = numerical_options(20),
        default = 8,
        hover = "Number of Extra Cave Biomes to generate"
    },
    {
        name = "TentaclePillar",
        label = "Tentacle Pillar Count",
        options = numerical_options(20, 1, 2),
        default = 11,
        hover = "Number of Tentacle Pillars to generate in the caves"
    },
    {
        name = "CavesResurrectionStone",
        label = "Touch Stone Count (Caves)",
        options = numerical_options(20),
        default = 2,
        hover = "Number of Touch Stones to generate in the caves"
    },
}