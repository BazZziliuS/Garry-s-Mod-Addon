att.PrintName = "G33(2x)"
att.Icon = Material("entities/arccw_mifl_tarkov_g33.png", "mips smooth")
att.Description = "Standalone Magnifier with a ton of reticle to choose from. Switch between them with 2x +USE."

att.SortOrder = 2

att.Desc_Pros = {
    "Точный прицел",
    "Увеличение",
}
att.Desc_Cons = {
}

att.Desc_Neutrals = {
    "Последний прицел - это сюрприз :)"
}

att.AutoStats = true
att.Slot = {"optic", "tarkov_optic_medium"}

att.Model = "models/weapons/arccw/mifl_atts/tarkov/g33.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/g33.png"),
            HolosightNoFlare = true,
            HolosightSize = 1.5,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/delta.png"),
            HolosightNoFlare = true,
            HolosightSize = 0.5,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },	
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/prism.png"),
            HolosightNoFlare = true,
            HolosightSize = 4,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
		},	
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/uh1.png"),
            HolosightNoFlare = true,
            HolosightSize = 1.5,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },	
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/eo3.png"),
            HolosightNoFlare = true,
            HolosightSize = 1.3,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },	
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/p90.png"),
            HolosightNoFlare = true,
            HolosightSize = 1.2,
            HolosightBlackbox = false,
            Colorable = true,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },		
    {
        Pos = Vector(0, 11.5, -1.75),
        Ang = Angle(0, 0, 0),
        Magnification = 2,
        HolosightBone = "scope",
        HolosightData = {
            Holosight = true,
			HolosightMagnification = 2,
            HolosightReticle = Material("mifl_tarkov_reticle/meme.png"),
            HolosightNoFlare = true,
            HolosightSize = 3,
            HolosightBlackbox = false,
            Colorable = false,
            HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/ncs_hsp.mdl"
        },
        IgnoreExtra = true,
    },	
}

att.Holosight = true
att.HolosightReticle = Material("mifl_tarkov_reticle/g33.png")
att.HolosightNoFlare = true
att.HolosightSize = 1
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/mifl_atts/tarkov/g33_hsp.mdl"

att.HolosightMagnification = 2
att.HolosightBlackbox = false

att.HolosightMagnification = 2.5

att.Mult_SightTime = 1.1275
att.Mult_SightedSpeedMult = 0.95