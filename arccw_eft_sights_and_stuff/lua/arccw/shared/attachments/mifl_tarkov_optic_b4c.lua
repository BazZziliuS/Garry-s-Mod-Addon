att.PrintName = "Canted Bravo 4 (4x)"
att.Icon = Material("entities/arccw_mifl_tarkov_c_b4.png", "mips smooth")
att.Description = "Scope with top mounted RMR. Switch between them with 2x +USE."

att.SortOrder = 4

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "Двойное нажатие +USE для переключения прицелов"
}
att.ModelOffset = Vector(-0.5, 0, -0.2)
att.AutoStats = true
att.Slot = {"backup", "tarkov_optic_backup_medium"}
att.InvAtt = "mifl_tarkov_optic_b4"

att.Model = "models/weapons/arccw/mifl_atts/tarkov/b4_canted.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(-0.55, 12, -2.1),
        Ang = Angle(0, 0, -45),
        Magnification = 2,
        ScopeMagnification = 4,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 4,
            HolosightReticle = Material("mifl_tarkov_reticle/b4.png"),
            HolosightNoFlare = true,
            HolosightSize = 3,
            HolosightBlackbox = true,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/b4_canted_hsp.mdl"
        },
        IgnoreExtra = false,
    },
    {
        Pos = Vector(-2.2, 7, -3.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("mifl_tarkov_reticle/delta.png"),
            HolosightSize = 0.5,
            Colorable = true,
            HolosightNoHSP = true
        }
    },
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/b4_canted_hsp.mdl"

att.ScopeGlint = true

att.Mult_SightTime = 1.175
att.Mult_SightedSpeedMult = 0.775
att.Mult_SpeedMult = 0.925

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}