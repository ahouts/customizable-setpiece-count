local opts = {
    ForestOptionalTasks = GetModConfigData("ForestOptionalTasks"),
    ResurrectionStone = GetModConfigData("ResurrectionStone"),
    WormholeGrass = GetModConfigData("WormholeGrass"),
    MooseNest = GetModConfigData("MooseNest"),
    MoonAltarRockGlass = GetModConfigData("MoonAltarRockGlass"),
    MoonAltarRockIdol = GetModConfigData("MoonAltarRockIdol"),
    MoonAltarRockSeed = GetModConfigData("MoonAltarRockSeed"),
    BathbombedHotspring = GetModConfigData("BathbombedHotspring"),
    MoonFissures = GetModConfigData("MoonFissures"),
    BrinePool1 = GetModConfigData("BrinePool1"),
    BrinePool2 = GetModConfigData("BrinePool2"),
    BrinePool3 = GetModConfigData("BrinePool3"),
    Waterlogged1 = GetModConfigData("Waterlogged1"),
    CavesOptionalTasks = GetModConfigData("CavesOptionalTasks"),
    TentaclePillar = GetModConfigData("TentaclePillar"),
    CavesResurrectionStone = GetModConfigData("CavesResurrectionStone"),
}

AddTaskSetPreInitAny(function(taskset)
    local util = require("extra-worldgen-customization-options/dst-util/util")(GLOBAL)
    local type = require("extra-worldgen-customization-options/dst-util/type")(util)

    local known_taskset = type.Union(
            type.Table({ location = "forest" }),
            type.Table({ location = "caves" })
    )
    if not type.type_check(known_taskset, taskset) then
        util.modprint("unknown taskset location:", util.access(taskset, "location"))
        return
    end

    local taskset_type_forest = type.Table({
        location = "forest",
        numoptionaltasks = type.Number(),
        set_pieces = type.Table({
            ResurrectionStone = type.Table({ count = type.Number() }),
            WormholeGrass = type.Table({ count = type.Number() }),
            MooseNest = type.Table({ count = type.Number() }),
            MoonAltarRockGlass = type.Table({ count = type.Number() }),
            MoonAltarRockIdol = type.Table({ count = type.Number() }),
            MoonAltarRockSeed = type.Table({ count = type.Number() }),
            BathbombedHotspring = type.Table({ count = type.Number() }),
            MoonFissures = type.Table({ count = type.Number() }),
        }),
        ocean_prefill_setpieces = type.Table({
            BrinePool1 = type.Table({ count = type.Number() }),
            BrinePool2 = type.Table({ count = type.Number() }),
            BrinePool3 = type.Table({ count = type.Number() }),
            Waterlogged1 = type.Table({ count = type.Number() }),
        }),
    })
    local taskset_type_caves = type.Table({
        location = "caves",
        numoptionaltasks = type.Number(),
        set_pieces = type.Table({
            TentaclePillar = type.Table({ count = type.Number() }),
            ResurrectionStone = type.Table({ count = type.Number() }),
        }),
    })
    local any_known_taskset = type.Union(taskset_type_forest, taskset_type_caves)

    if not type.type_check(any_known_taskset, taskset) then
        util.modprint(any_known_taskset.describe())
        util.display(taskset)
        util.error("implementation of taskset feature count changed, contact mod author!")
        return
    end

    if taskset.location == "forest" then
        taskset.numoptionaltasks = opts.ForestOptionalTasks
        taskset.set_pieces.ResurrectionStone.count = opts.ResurrectionStone
        taskset.set_pieces.WormholeGrass.count = opts.WormholeGrass
        taskset.set_pieces.MooseNest.count = opts.MooseNest
        taskset.set_pieces.MoonAltarRockGlass.count = opts.MoonAltarRockGlass
        taskset.set_pieces.MoonAltarRockIdol.count = opts.MoonAltarRockIdol
        taskset.set_pieces.MoonAltarRockSeed.count = opts.MoonAltarRockSeed
        taskset.set_pieces.BathbombedHotspring.count = opts.BathbombedHotspring
        taskset.set_pieces.MoonFissures.count = opts.MoonFissures
        taskset.ocean_prefill_setpieces.BrinePool1.count = opts.BrinePool1
        taskset.ocean_prefill_setpieces.BrinePool2.count = opts.BrinePool2
        taskset.ocean_prefill_setpieces.BrinePool3.count = opts.BrinePool3
        taskset.ocean_prefill_setpieces.Waterlogged1.count = opts.Waterlogged1
    elseif taskset.location == "caves" then
        taskset.numoptionaltasks = opts.CavesOptionalTasks
        taskset.set_pieces.TentaclePillar.count = opts.TentaclePillar
        taskset.set_pieces.ResurrectionStone.count = opts.CavesResurrectionStone
    else
        util.error("implementation bug in mod, contact mod author!")
    end
end)