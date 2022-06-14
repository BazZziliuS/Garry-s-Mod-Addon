att.PrintName = "Delta (LP)"
att.Icon = Material("entities/arccw_mifl_tarkov_delta.png", "mips smooth")
att.Description = "Lightweight compact sight for small arms."

att.SortOrder = -0.5

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic_lp", "tarkov_optic_small"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/delta.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/delta.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"
att.Colorable = true