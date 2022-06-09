local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Покупка ентити")
CHALLENGE:SetIcon("battlepass/challenges/entities.png") -- <- ??
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Купите еще :goal ентити")
CHALLENGE:SetFinishedDesc("Купил :goal ентити")
CHALLENGE:SetID("buy_entities")
CHALLENGE:AddHook("playerBoughtCustomEntity", function(self, ply, _ply, stbl, ent, price)
  if IsValid( _ply ) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)