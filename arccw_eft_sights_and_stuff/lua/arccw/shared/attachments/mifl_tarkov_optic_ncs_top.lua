att.PrintName = "NCS Backup (HOLO)"
att.Icon = Material("entities/arccw_mifl_tarkov_ncs2.png", "mips smooth")
att.Description = "Someone managed to take the backup sight of a NCS and mount it."

att.SortOrder = 0.25

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Зачем вам использовать это"
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/ncs_top.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.3),
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

att.Mult_SightTime = 1.05