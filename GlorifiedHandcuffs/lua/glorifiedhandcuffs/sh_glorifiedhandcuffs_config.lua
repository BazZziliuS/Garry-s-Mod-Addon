
GlorifiedHandcuffs.Config.BREAK_FREE_ENABLED = true -- Should the break free system be enabled?
GlorifiedHandcuffs.Config.BREAK_FREE_MIN_TIME = 0.05 -- What's the minimum time between clicks when breaking out?
GlorifiedHandcuffs.Config.BREAK_FREE_EXPIRY_TIME = 0.11 -- What's the maximum time between clicks when breaking out?
GlorifiedHandcuffs.Config.BREAK_FREE_TOTAL = 100 -- How many clicks are required to break out?
GlorifiedHandcuffs.Config.BREAK_FREE_WANTED = true -- Should we make the player wanted for breaking out?
GlorifiedHandcuffs.Config.BREAK_FREE_SOUND_ON_FAILURE = true -- Should we play a 3D sound when the player fails breaking out?
GlorifiedHandcuffs.Config.BREAK_FREE_SOUND_ON_FAILURE_PATH = "physics/metal/metal_box_impact_hard2.wav" -- See above.

GlorifiedHandcuffs.Config.JAILER_ARREST_TIME = 180 -- How long will a player be arrested at the jailer for?
GlorifiedHandcuffs.Config.JAILER_ARREST_REWARD = 1500 -- How much will a cop get rewarded for an arrest? Only works if jail only mode is off.
GlorifiedHandcuffs.Config.TEAM_CHANGE_UPON_JAIL = true -- Should we change the player's job upon jailing?
GlorifiedHandcuffs.Config.TEAM_CHANGE_UPON_JAIL_TEAM = TEAM_JAIL -- Which job would you like to change to?
GlorifiedHandcuffs.Config.JAIL_ONLY_MODE = false -- Set to true if you would like the handcuffs to behave like an arrest baton, arresting upon handcuffing.

GlorifiedHandcuffs.Config.CAN_NORMAL_PLAYER_HANDCUFF_WITHOUT_SURRENDER = true -- Can a normal player handcuff without the person being handcuffed surrendering?
GlorifiedHandcuffs.Config.ONLY_ALLOW_HANDCUFF_IF_PLAYER_WANTED = false -- Should we only allow an officer to handcuff a player if they're wanted?
GlorifiedHandcuffs.Config.CAN_ANY_COP_RELEASE_HANDCUFFS = false -- Установите для этого значение true, если вы хотите, чтобы любой полицейский освободил кого-то от наручников.
GlorifiedHandcuffs.Config.HANDCUFF_DISTANCE = 125 -- How far can a player handcuff from?
GlorifiedHandcuffs.Config.TIME_TO_CUFF = 0.4 -- How many seconds must the player remain within distance to handcuff?

GlorifiedHandcuffs.Config.DRAG_DISTANCE_LIMIT = true -- Is there a speed limit on dragging?
GlorifiedHandcuffs.Config.DRAG_DISTANCE_LIMIT_COUNT = 500 -- What's the speed limit on dragging?
GlorifiedHandcuffs.Config.DRAG_SPEED_COUNT = 100 -- Какова скорость перетаскивания?

GlorifiedHandcuffs.Config.BAIL_AMOUNT = 5000 -- How much does it cost to bail someone out?

GlorifiedHandcuffs.Config.BREAK_FREE_KEY = KEY_E -- The key to break free.
GlorifiedHandcuffs.Config.BREAK_FREE_KEY_NAME = "E" -- The string for the key that appears in the HUD.
GlorifiedHandcuffs.Config.TOGGLE_SURRENDER_KEY = KEY_J -- The key to surrender.
GlorifiedHandcuffs.Config.TOGGLE_SURRENDER_KEY_NAME = "J" -- The string for the key that appears in the HUD.

GlorifiedHandcuffs.Config.NIGHTSTICK_STUN_TIME = 5 -- How many seconds should the Nightstick freeze a player for?
GlorifiedHandcuffs.Config.NIGHTSTICK_STUN_PUSH_DISTANCE = 100 -- How far should the Nightstick push a stunned player?

GlorifiedHandcuffs.Config.SUPPORT_BLOGS = false -- Should bLogs be supported?

GlorifiedHandcuffs.Config.PLAYERMODEL_WHITELIST = { -- Which player models cannot be handcuffed?
    ["example_model_here.mdl"] = true
}
GlorifiedHandcuffs.Config.TEAM_WHITELIST = { -- Which teams cannot be handcuffed?
    [TEAM_CITIZEN] = false,
}

GlorifiedHandcuffs.Config.WEAPON_BLACKLIST_IS_WHITELIST = false -- Is the below blacklist a whitelist?
GlorifiedHandcuffs.Config.WEAPON_BLACKLIST = { -- Which weapons will not appear in the confiscate menu.
    ["keys"] = true,
    ["arrest_stick"] = true,
    ["door_ram"] = true,
    ["lockpick"] = true,
    ["med_kit"] = true,
    ["pocket"] = true,
    ["swep_disguise_briefcase"] = true,
    ["base_keypadcracker"] = true,
    ["skeypad_cracker_base"] = true,
    ["pro_keypadcracker"] = true,
    ["weapon_angryhobo"] = true,
    ["betterbanking_atmhack"] = true,
    ["fas2_ifak"] = true,
    ["rp_box_in_hands"] = true,
    ["zbl_gun"] = true,
    ["zbl_spray"] = true,
    ["ztm_trashcollector"] = true,
    ["stunstick"] = true,
    ["unarrest_stick"] = true,
    ["weaponchecker"] = true,
    ["weapon_keypadchecker"] = true,
    ["weapon_bugbait"] = true,
    ["weapon_fists"] = true,
    ["gmod_camera"] = true,
    ["manhack_welder"] = true,
    ["weapon_medkit"] = true,
    ["gmod_tool"] = true,
    ["weapon_physgun"] = true,
    ["weapon_physcannon"] = true,
    ["glorifiedhandcuffs_restrained"] = true,
    ["glorifiedhandcuffs_handcuffs"] = true,
    ["glorifiedhandcuffs_nightstick"] = true,
    ["glorifiedbanking_card"] = true,
    ["pickpocket"] = true,
    ["vip_pickpocket"] = true,
    ["itemstore_pickup"] = true,
    ["arccw_go_melee_knife"] = true,
    ["weapon_stungun"] = true,
}
GlorifiedHandcuffs.Config.LEGAL_WEAPONS = { -- Weapons that are legal with a gun license.
    ["weapon_glock2"] = true,
    ["weapon_fiveseven2"] = true,
    ["arccw_eap_aek"] = true,
    ["arccw_eap_brenten"] = true,
    ["arccw_eap_csls5"] = true,
    ["arccw_eap_fmg9"] = true,
    ["arccw_eap_groza"] = true,
    ["arccw_eap_lebedev"] = true,
    ["arccw_eap_spectre"] = true,
    ["arccw_eap_stg44"] = true,
    ["arccw_eap_vp70"] = true,
    ["arccw_eap_xm29"] = true,
    ["arccw_go_ace"] = true,
    ["arccw_go_ak47"] = true,
    ["arccw_go_ar15"] = true,
    ["arccw_go_aug"] = true,
    ["arccw_go_famas"] = true,
    ["arccw_go_m4"] = true,
    ["arccw_go_sg556"] = true,
    ["arccw_go_g3"] = true,
    ["arccw_go_scar"] = true,
    ["arccw_go_nade_frag"] = true,
    ["arccw_go_nade_incendiary"] = true,
    ["arccw_go_m249para"] = true,
    ["arccw_go_negev"] = true,
    ["arccw_go_cz75"] = true,
    ["arccw_go_deagle"] = true,
    ["arccw_go_fiveseven"] = true,
    ["arccw_go_glock"] = true,
    ["arccw_go_m9"] = true,
    ["arccw_go_r8"] = true,
    ["arccw_go_p2000"] = true,
    ["arccw_go_p250"] = true,
    ["arccw_go_tec9"] = true,
    ["arccw_go_usp"] = true,
    ["arccw_go_m1014"] = true,
    ["arccw_go_mag7"] = true,
    ["arccw_go_870"] = true,
    ["arccw_go_nova"] = true,
    ["arccw_go_mac10"] = true,
    ["arccw_go_mp5"] = true,
    ["arccw_go_mp7"] = true,
    ["arccw_go_mp9"] = true,
    ["arccw_go_p90"] = true,
    ["arccw_go_bizon"] = true,
    ["arccw_go_ump"] = true,
    ["arccw_go_awp"] = true,
    ["arccw_go_ssg08"] = true,
}