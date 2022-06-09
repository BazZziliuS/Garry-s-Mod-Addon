local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Время игры")
CHALLENGE:SetIcon("battlepass/challenges/playtime.png")
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Поиграйте еще :goal минут на этом сервере")
CHALLENGE:SetFinishedDesc("Играл более :goal минут")
CHALLENGE:SetID("playtime")
CHALLENGE:AddTimer( 5*60, function( self, ply )
	if IsValid( ply ) and ply:Alive() then
		self:AddProgress(5)
		self:NetworkProgress()
	end
end )

BATTLEPASS:RegisterChallenge(CHALLENGE)