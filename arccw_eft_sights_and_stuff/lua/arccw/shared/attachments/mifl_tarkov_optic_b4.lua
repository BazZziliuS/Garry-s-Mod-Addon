att.PrintName = "Bravo 4 (4x)"
att.Icon = Material("entities/arccw_mifl_tarkov_b4.png", "mips smooth")
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
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/b4.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12.2, -1.35),
        Ang = Angle(0, 0, 0),
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
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/b4_hsp.mdl"
        },
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 9, -3.2),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle =  Material("mifl_tarkov_reticle/delta.png"),
            HolosightSize = 0.5,
            Colorable = true,
            HolosightNoHSP = true
        },
        IgnoreExtra = true,		
    },
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/b4_hsp.mdl"

att.ScopeGlint = true

att.Mult_SightTime = 1.175
att.Mult_SightedSpeedMult = 0.775
att.Mult_SpeedMult = 0.925

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}