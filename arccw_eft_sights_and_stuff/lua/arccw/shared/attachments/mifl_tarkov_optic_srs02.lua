att.PrintName = "SRS 02 (HOLO)"
att.Icon = Material("entities/arccw_mifl_tarkov_srs02.png", "mips smooth")
att.Description = "Round and big reflex. Poor clearity but offers great visibility."

att.SortOrder = 0.5

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/srs02.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 6.5, -1.5),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png")
att.HolosightNoFlare = true
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.0625