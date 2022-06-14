att.PrintName = "Specter DR(2-4x)"
att.Icon = Material("entities/arccw_mifl_tarkov_specdr.png", "mips smooth")
att.Description = "Combat sight designed to cover from close to medium range."

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

att.Model = "models/weapons/arccw/mifl_atts/tarkov/specter.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 12.5, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 3,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = false,
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 4,
			HolosightReticle = Material("mifl_tarkov_reticle/specdr.png"),
            HolosightNoFlare = true,
            HolosightSize = 7,
            HolosightBlackbox = true,
			HolosightMagnificationMin = 2,
			HolosightMagnificationMax = 4,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/specter_hsp.mdl"		
        },	
        IgnoreExtra = true,		
    },
    {
        Pos = Vector(0, 11.2, -2.55),
        Ang = Angle(0, 0, 0),
        Magnification = 1.2,
        HolosightData = {
            Holosight = true,
            HolosightMagnification = 4,
			HolosightReticle = Material("mifl_tarkov_reticle/blank.png"),
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/specter_hsp.mdl",
            HolosightBlackbox = true,			
        },	
        IgnoreExtra = true,		
    },	
}
att.HolosightReticle = Material("mifl_tarkov_reticle/specdr.png")
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/specter_hsp.mdl"
att.Mult_SightTime = 1.125
att.Mult_SightedSpeedMult = 0.92

att.ScopeGlint = true