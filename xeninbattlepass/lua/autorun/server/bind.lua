hook.Add("PlayerButtonDown", "battlepasskey", function(ply, key)
	if (key == KEY_F2) then
		ply:ConCommand("battlepass")
	end
end)