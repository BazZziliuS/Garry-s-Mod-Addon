local REWARD = BATTLEPASS:CreateReward()
REWARD.Mat = "battlepass/refresh.png"

function REWARD:CanUnlock(ply, reward)
	return true
end
function REWARD:GetTooltip(reward)
	return "После активации нужно перезайти!"
end

function REWARD:GetModel()
	return self.Mat
end

function REWARD:GetName(reward)
	return "Сброс BATTLEPASS"
end

function REWARD:Unlock(ply, reward)
	if (CLIENT) then return end
    sql.Query("DELETE FROM battlepass_claimed WHERE sid64 = " .. ply:SteamID64())
    sql.Query("DELETE FROM battlepass_challenges WHERE sid64 = " .. ply:SteamID64())
    sql.Query("DELETE FROM battlepass_players WHERE sid64 = " .. ply:SteamID64())
end

REWARD:Register("removebp")