att.PrintName = "Canted Delta (LP)"
att.Icon = Material("entities/arccw_mifl_tarkov_c_delta.png", "mips smooth")
att.Description = "Lightweight compact sight for small arms."

att.SortOrder = 0.25

att.Desc_Pros = {
    "Точный прицел",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"backup", "tarkov_optic_backup_small"}
att.InvAtt = "mifl_tarkov_optic_delta"

att.Model = "models/weapons/arccw/mifl_atts/tarkov/delta_canted.mdl"

att.ModelOffset = Vector(-0.5, 0, -0.2)

att.AdditionalSights = {
    {
        Pos = Vector(-0.6, 7, -2),
        Ang = Angle(0, 0, -45),
        Magnification = 1.15,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/dot.png")
att.HolosightSize = 1.2
att.HolosightBone = "holosight"
att.Colorable = true