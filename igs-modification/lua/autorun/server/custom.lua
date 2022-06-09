-- IGS("999 патронов", "ammos")
hook.Add("PlayerLoadout", "IGS.Ammo", function(pl)
    if pl:HasPurchase("ammos") or pl:HasPurchase("ammosbonus") then
        for k, v in pairs(game.GetAmmoTypes()) do
            pl:GiveAmmo(999,k)
        end
    end
end)

hook.Add("PlayerAmmoChanged", "IGS.Ammo", function(pl, id, old, new)
    if pl:HasPurchase("ammos") or pl:HasPurchase("ammosbonus") and new <= 100 then
        pl:GiveAmmo(999, id)
    end
end)


-- IGS("Лицензия", "licenses")
hook.Add("PlayerLoadout", "IGS.Licenses", function(pl)
    if pl:HasPurchase("licenses") or pl:HasPurchase("licensesbonus") or pl:HasPurchase("deluxe_perma") or pl:HasPurchase("vip_perma") then
			pl:setDarkRPVar("HasGunlicense", true)
    end
end)


-- IGS("Медицинская Маска", "medmask")
hook.Add("PlayerLoadout", "IGS.Medmask", function(pl)
    if pl:HasPurchase("medmask") or pl:HasPurchase("medmaskbonus") or pl:HasPurchase("deluxe_perma") or pl:HasPurchase("vip_perma") then
    	if !table.HasValue({TEAM_ZBL_RESEARCHER}, pl:Team()) then
			zbl.f.GasMask_Equipt(pl,true)
			SafeRemoveEntity(self) 
		end
	end
end)
