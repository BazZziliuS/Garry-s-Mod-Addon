local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Купи оружие")
CHALLENGE:SetIcon("battlepass/challenges/weapons.png") -- <- ??
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Купи еще :goal пушки")
CHALLENGE:SetFinishedDesc("Купил :goal пушки")
CHALLENGE:SetID("buy_weapons")
CHALLENGE:AddHook("playerBoughtPistol", function(self, ply, _ply, stbl, ent, price)
  if IsValid( _ply ) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)