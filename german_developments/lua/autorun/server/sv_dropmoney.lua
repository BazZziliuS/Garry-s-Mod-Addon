hook.Add("PlayerDeath", "DarkrpDeathMoneyDrop", function(ply) --Если будет косяк с спавном денег при смерти меняем на Player:Kill -- было PostPlayerDeath
	local amount = math.random(1000, 5000)
	if not ply:canAfford(amount) then
		amount = ply:getDarkRPVar("money")
	end

	if amount > 0 then
		ply:addMoney(-amount)
		DarkRP.createMoneyBag(ply:GetPos(), amount)
	end
end)

hook.Add("PlayerSpawnedSWEP", "DisableSWEPDrop", function(ply, swep)
  swep.SpawnmenuCreated = true
end)

hook.Add("canDropWeapon", "DisableSWEPDrop", function(ply, swep)
  if swep.SpawnmenuCreated then
    return false
  end
end)