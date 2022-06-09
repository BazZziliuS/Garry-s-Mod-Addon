local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Повреждения при падении")
CHALLENGE:SetIcon("battlepass/challenges/fall_dmg.png")
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Потеряйте :goal здоровья, упав")
CHALLENGE:SetFinishedDesc("Потерял :goal здоровья при падении")
CHALLENGE:SetID("falldamage")
CHALLENGE:AddHook("EntityTakeDamage", function(self, ply, target, damage)
  if ply == target and damage:GetDamageType() == DMG_FALL then
    self:AddProgress(math.Round(damage:GetDamage(), 0))
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)