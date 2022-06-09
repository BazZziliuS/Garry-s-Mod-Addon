local CHALLENGE = BATTLEPASS:CreateTemplateChallenge()
CHALLENGE:SetName("Покупайте ящики")
CHALLENGE:SetIcon("battlepass/challenges/shipments.png") -- <- ??
CHALLENGE:SetDesc("")
CHALLENGE:SetProgressDesc("Купите еще :goal ящика")
CHALLENGE:SetFinishedDesc("Куплено :goal ящика")
CHALLENGE:SetID("buy_shipments")
CHALLENGE:AddHook("playerBoughtShipment", function(self, ply, _ply, stbl, ent, price)
  if IsValid( _ply ) and ply == _ply then
    self:AddProgress(1)
    self:NetworkProgress()
  end
end)
BATTLEPASS:RegisterChallenge(CHALLENGE)