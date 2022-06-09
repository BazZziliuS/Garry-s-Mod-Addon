local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Пропы")
CHALLENGE:SetIcon("battlepass/challenges/prop.png")
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Заспавни еще :goal пропа")
CHALLENGE:SetFinishedDesc("Спавнил :goal пропа")
CHALLENGE:SetID("props")
CHALLENGE:AddHook("PlayerSpawnedProp", function(self, ply, spawnPly, mdl, ent)
  if (ply == spawnPly) then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)
