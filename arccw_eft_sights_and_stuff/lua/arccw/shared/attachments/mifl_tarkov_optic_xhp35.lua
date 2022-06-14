att.PrintName = "XHP-35 (1.5-2.5x)"
att.Icon = Material("entities/arccw_mifl_tarkov_xhp35.png", "mips smooth")
att.Description = "Flash light mocked up as a mid range combat scope."

att.SortOrder = 2.5

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/xhp35_optic.mdl"

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
att.HolosightReticle = Material("mifl_tarkov_reticle/b42.png")
att.HolosightNoFlare = true
att.HolosightSize = 5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/xhp35_hsp.mdl"
att.Colorable = false

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.HolosightMagnification = 2.5
att.HolosightMagnificationMin = 2
att.HolosightMagnificationMax = 3

att.Mult_SightTime = 1.075
att.Mult_SightedSpeedMult = 0.93