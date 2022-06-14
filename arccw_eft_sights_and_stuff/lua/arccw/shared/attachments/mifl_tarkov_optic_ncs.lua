att.PrintName = "NCS (3-6x)"
att.Icon = Material("entities/arccw_mifl_tarkov_ncs.png", "mips smooth")
att.Description = "Heavy advance dual optic system. Switch between them with 2x +USE."

att.SortOrder = 6

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}

att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/ncs.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12, -1.95),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScopeMagnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 3,
			HolosightMagnificationMin = 3,
			HolosightMagnificationMax = 6,
            HolosightReticle = Material("mifl_tarkov_reticle/ncs_bottom.png"),
            HolosightNoFlare = true,
            HolosightSize = 4,
            HolosightBlackbox = true,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 10, -4.1),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        HolosightBone = "holosight",
        HolosightData = {
            Holosight = true,
            HolosightReticle = Material("mifl_tarkov_reticle/dot.png"),
            HolosightSize = 1,
            Colorable = true,
            HolosightNoHSP = true
        },
        IgnoreExtra = true,		
    },
}

att.Holosight = true
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"

att.ScopeGlint = true

att.Mult_SightTime = 1.3
att.Mult_SightedSpeedMult = 0.78
att.Mult_SpeedMult = 0.925

att.ColorOptionsTable = {
    Color(255, 50, 50),
    Color(50, 255, 50)
}