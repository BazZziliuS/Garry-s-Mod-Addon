local dist = 1024 ^ 2
hook.Add("CanPlayerSuicide", "ShySuicide", function(ply)
	local pos = ply:GetPos()
	for _, ply2 in ipairs(player.GetAll()) do
		if ply ~= ply2 and ply2:GetPos():DistToSqr(pos) < dist then
			ply:SendMessageFD(Color(0,255,128), "Гражданин: ", Color(255,255,255), "Не делай этого пока я вижу!")
			return false
		end
	end
end)