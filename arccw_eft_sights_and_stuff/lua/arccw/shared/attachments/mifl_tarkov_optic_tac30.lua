att.PrintName = "TAC-30 (2-3x)"
att.Icon = Material("entities/arccw_mifl_tarkov_tac30.png", "mips smooth")
att.Description = "Mid range tactical combat scope."

att.SortOrder = 3

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/tac30.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 14, -1.78),
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
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/tac30_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 2.5
att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.125
att.Mult_SightedSpeedMult = 0.92