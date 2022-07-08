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
    end
end)