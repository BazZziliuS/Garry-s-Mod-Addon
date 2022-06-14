att.PrintName = "Compact TAC-30 (1.2-2x)"
att.Icon = Material("entities/arccw_mifl_tarkov_tac30_lp.png", "mips smooth")
att.Description = "Compact short range tactical combat scope."

att.SortOrder = 2

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "optic_lp", "tarkov_optic_medium", "tarkov_optic_small"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/tac30_lp.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 14, -1.625),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 2,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",		
        IgnoreExtra = true,
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/tac30.png")
att.HolosightNoFlare = true
att.HolosightSize = 5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/tac30_lp_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 2.5
att.HolosightMagnificationMin = 1.2
att.HolosightMagnificationMax = 2

att.Mult_SightTime = 1.085
att.Mult_SightedSpeedMult = 0.92