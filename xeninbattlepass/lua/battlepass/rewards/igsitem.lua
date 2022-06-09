local REWARD = BATTLEPASS:CreateReward()
REWARD.Mat = "battlepass/donate.png"

function REWARD:CanUnlock(ply, reward)
	return true
end
function REWARD:GetTooltip(reward)
	local ITEM = IGS.GetItemByUID(reward)
	return "Предмет из  /donate"
end

function REWARD:GetModel()
	return self.Mat
end

function REWARD:GetName(reward)
	local ITEM = IGS.GetItemByUID(reward)
	return string.Comma(ITEM:Name())
end

function REWARD:Unlock(ply, reward)
	if (CLIENT) then return end
	IGS.AddToInventory(ply, reward)
end

REWARD:Register("igsitem")
