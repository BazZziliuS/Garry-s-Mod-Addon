hook.Add("PlayerButtonDown", "battlepasskey", function(ply, key)
	if (key == KEY_F2) then
		ply:ConCommand("battlepass")
	end
end)

if (SERVER) then
resource.AddFile("materials/logo/rp.png")
resource.AddFile("resource/fonts/Comfortaa.ttf")
end