local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Сменить работу")
CHALLENGE:SetIcon("battlepass/challenges/job.png") -- <- ??
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Меняйте свою работу еще :goal раза")
CHALLENGE:SetFinishedDesc("Менял работу :goal раза")
CHALLENGE:SetID("change_job")
CHALLENGE:AddHook("OnPlayerChangedTeam", function(self, ply, _ply, before, after)
  if IsValid( _ply ) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)