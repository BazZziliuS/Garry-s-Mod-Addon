local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Покупайте двери")
CHALLENGE:SetIcon("battlepass/challenges/door.png")
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Купите еще :goal дверей")
CHALLENGE:SetFinishedDesc("Купил :goal двери")
CHALLENGE:SetID("doors_bought")
CHALLENGE:AddHook("playerBoughtDoor", function(self, ply, _ply)
  if ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)