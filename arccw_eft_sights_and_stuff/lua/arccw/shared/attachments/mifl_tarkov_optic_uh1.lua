att.PrintName = "Razor UH1 (HOLO)"
att.Icon = Material("entities/arccw_mifl_tarkov_uh1.png", "mips smooth")
att.Description = "Boxy holographic sight with clear visibility. Not only about futuristic design, but is also a revolution among holographic and reflex sights."

att.SortOrder = 0.5

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/uh1.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -1.7),
        Ang = Angle(0, 0, 0),
        Magnification = 1.25,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/uh1.png")
att.HolosightNoFlare = true
att.HolosightSize = 1.8
att.HolosightBone = "holosight"
att.Colorable = true

att.Mult_SightTime = 1.075