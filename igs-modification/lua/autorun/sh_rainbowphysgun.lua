-- UID итема в sh_additems, при активации которого игроку будет выдан цветной физган
local PHYSGUN_ITEM_UID = "rainbowphysgun"

if SERVER then
	hook.Add("IGS.PlayerPurchasesLoaded", PHYSGUN_ITEM_UID, function(pl)
		if pl:HasPurchase(PHYSGUN_ITEM_UID) then
			pl:SetNWBool(PHYSGUN_ITEM_UID, true)
		end
	end)

	hook.Add("IGS.PlayerActivatedItem", PHYSGUN_ITEM_UID, function(pl, ITEM)
		if ITEM:UID() == PHYSGUN_ITEM_UID then
			pl:SetNWBool(PHYSGUN_ITEM_UID, true)
		end
	end)

	return
end

local div = 255 / 1
local col, vec_col

hook.Add("Think", PHYSGUN_ITEM_UID, function()
	col = HSVToColor(CurTime() % 6 * 150, 1, 1)
	vec_col = Vector(col.r * div, col.g * div, col.b * div)

	for i, ply in ipairs(player.GetHumans()) do
		if ply:GetNWBool(PHYSGUN_ITEM_UID, false) then
			ply:SetWeaponColor(vec_col)
		end
	end
end)