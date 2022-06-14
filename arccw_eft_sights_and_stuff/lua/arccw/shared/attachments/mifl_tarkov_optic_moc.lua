att.PrintName = "Compact Prism(1.75x)"
att.Icon = Material("entities/arccw_mifl_tarkov_moc.png", "mips smooth")
att.Description = "Compact prismatic scope with 1.75x magnification."

att.SortOrder = 1.75

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/moc.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.75,
        IgnoreExtra = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/prism.png")
att.HolosightNoFlare = true
att.HolosightSize = 4
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/moc_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = false

att.HolosightMagnification = 2.5

att.Mult_SightTime = 1.115
att.Mult_SightedSpeedMult = 0.92