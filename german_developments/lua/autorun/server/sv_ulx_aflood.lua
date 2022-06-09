--by Exec#8920,Exek.ml
local coomands_and_cooldowns = {
	--["комманда (только ulx)"] = 2 (сек. кулдауна), 
	["ulx jailroom"] = 10,
	["ulx ban"] = 10,
	["ulx jail"] = 10,
	["ulx kick"] = 10,
--	["ulx offadminmode"] = 1 
}

hook.Add("ULibCommandCalled","ulx_commands_cooldown",function(ply, commandName, args)
    if not IsValid(ply) then return end
   -- if ply:SteamID() == "STEAM_0:0:83890893" then return end
	if ply.lastcommand == nil then
		ply.lastcommand = CurTime()
	end
	for k,v in pairs(coomands_and_cooldowns) do
		if k == commandName then
			if ply.lastcommand <= CurTime() then
				ply.lastcommand = CurTime() + v
				return true
			else
				ply:ChatPrint("Не спамь командами!")
					-- RunConsoleCommand('ulx','kick',ply:Nick(),'Не спамь командами')
					-- RunConsoleCommand('ulx','banid',ply:SteamID(),'1','Не спамь командами')
					-- ply:ChatPrint('')
				return false
			end
		end
	end
end)