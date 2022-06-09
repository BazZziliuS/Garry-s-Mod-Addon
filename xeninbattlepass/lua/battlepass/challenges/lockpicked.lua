local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Отмычка")
CHALLENGE:SetIcon("battlepass/challenges/lockpick.png")
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Вскрой :goal дверей")
CHALLENGE:SetFinishedDesc("Вскрыто :goal дверей")
CHALLENGE:SetID("lockpicked")
CHALLENGE:AddHook("onLockpickCompleted", function(self, ply, _ply, succ, ent)
  if IsValid( _ply ) and ply == _ply and succ then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)