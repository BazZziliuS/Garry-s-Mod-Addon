hook.Add('PlayerSpawnProp', 'proplimit_donat', function(ply)
	local prop = ply:HasPurchase('givelimit')
	local count = ply:GetCount('props')

	
	if prop then
		local max = 50 + (prop * 50)
		if count >= max then
			DarkRP.notify(ply, 4, 5, 'Ты достиг лимита пропов ('..count ..'/'..max..')')
			DarkRP.notify(ply, 0, 3, 'Увеличить лимит можно в /donate')
			return false
		else
			return true
		end
	end
	
	if count >= 50 then
		DarkRP.notify(ply, 4, 5, 'Ты достиг лимита пропов ('..count ..'/50)')
		DarkRP.notify(ply, 0, 3, 'Увеличить лимит можно в /donate')
		return false
	end
end)