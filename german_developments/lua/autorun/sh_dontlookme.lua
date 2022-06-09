local dist = 256 ^ 2
hook.Add("CanPlayerSuicide", "ShySuicide", function(ply)
	local pos = ply:GetPos()
	for _, ply2 in ipairs(player.GetHumans()) do
		if ply ~= ply2 and ply2:GetPos():DistToSqr(pos) < dist then
			return false
		end
	end
end)