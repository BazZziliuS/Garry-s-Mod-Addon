local REWARD = BATTLEPASS:CreateReward()
REWARD.Mat = "battlepass/ruble.png"

function REWARD:CanUnlock(ply, reward)
	return true
end

function REWARD:GetTooltip(reward)
	return "Донат валюта  /donate"
end

function REWARD:GetModel()
	return self.Mat
end

function REWARD:GetName(reward)
	return string.Comma(reward) .. " тугрик" .. (reward != 1 and "ов" or "")
end

function REWARD:Unlock(ply, reward)
	if (CLIENT) then return end
	ply:AddIGSFunds(reward, "Награда за BATTLEPASS")
end

REWARD:Register("igstug")
