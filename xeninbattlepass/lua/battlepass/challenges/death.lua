local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Умри")
CHALLENGE:SetIcon("battlepass/challenges/death.png")
CHALLENGE:SetProgressDesc("Умри :goal раз")
CHALLENGE:SetFinishedDesc("Умер :goal раза")
CHALLENGE:SetID("death")
CHALLENGE:AddHook("PlayerDeath", function(self, ply, victim, inflictor, attacker)
  if (IsValid(attacker) and ply == attacker and attacker == victim) then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)