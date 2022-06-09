local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Расстояние")
CHALLENGE:SetIcon("battlepass/challenges/running.png")
CHALLENGE:SetProgressDesc("Путешествуй еще :goal метра")
CHALLENGE:SetFinishedDesc("Путешествовал :goal метра")
CHALLENGE:SetID("distance")
CHALLENGE.LastCheck = 0
local unitToMeter = 0.0254 / (4/3)
CHALLENGE.SaveThink = function(self)
  self:AddToQueue()
end
CHALLENGE:AddTimer(5, function( self, ply )
	if (!IsValid(ply)) then return end
	
	if !self.LastPos or self.LastPos == ply:GetPos() or !ply:Alive() or !ply:IsOnGround() then 
		self.LastPos = ply:GetPos()
		return
	end

	local m = 0

	local lp 	= self.LastPos
	local cp 	= ply:GetPos()
	local d		= cp:Distance(lp)

	m = d*unitToMeter

	if d > 0 then
		self:AddProgress( m )
		self:NetworkProgress()
	end

	self.LastPos = cp
end )

BATTLEPASS:RegisterChallenge(CHALLENGE)