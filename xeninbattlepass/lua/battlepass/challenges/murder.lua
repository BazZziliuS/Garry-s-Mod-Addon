local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Убийство")
CHALLENGE:SetIcon("battlepass/challenges/kill.png")
CHALLENGE:SetProgressDesc("Убей еще :goal человек")
CHALLENGE:SetFinishedDesc("Убил :goal людей")
CHALLENGE:SetID("murder")
CHALLENGE:AddHook("PlayerDeath", function(self, ply, victim, inflictor, attacker)
  if (IsValid(attacker) and ply == attacker and attacker != victim) then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)