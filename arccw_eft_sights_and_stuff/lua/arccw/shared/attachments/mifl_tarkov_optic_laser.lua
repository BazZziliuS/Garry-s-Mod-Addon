att.PrintName = "LS321 (PS)"
att.Icon = Material("entities/arccw_mifl_tarkov_ls321.png", "mips smooth")
att.Description = "Compact laser designed for point shooting."

att.SortOrder = 1

att.Desc_Pros = {
    "Альтернативный режим точечной стрельбы",
}
att.Desc_Cons = {
    "con.beam"
}
att.Desc_Neutrals = {
    "Двойное нажатие +USE для переключения прицелов"
}

att.ExcludeFlags = {"mifl_tarkov_optic_laser_main"}
att.GivesFlags = {"mifl_tarkov_optic_laser"}

att.AutoStats = true
att.Slot = {"backup", "tarkov_optic_backup_small"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/laser_ls321.mdl"

att.ModelOffset = Vector(0, 0, 0.5)

att.Laser = true
att.LaserStrength = 1
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(225, 5, 17)}

att.AdditionalSights = {
    {
        Pos = Vector(-0.4, 15, -2.2),
        Ang = Angle(0, 0, -30),
        Magnification = 1.15,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true

att.Mult_HipDispersion = 0.7
att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 0.95

att.Mult_MoveSpeed = 0.94