att.PrintName = "RMR [Raised](Relfex)"
att.Icon = Material("entities/arccw_mifl_tarkov_rmr.png", "mips smooth")
att.Description = "Durable and lightweight compact reflex sight."

att.SortOrder = 0.25

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/rmr.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.65),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/delta.png")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.0425