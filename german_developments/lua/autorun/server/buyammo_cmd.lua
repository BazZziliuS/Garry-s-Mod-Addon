local PricePerBullet = 50 -- цена за один патрон

concommand.Add("buyammo", function(ply) -- консольная-команда, вы можете добавить кнопку в cmenu/f4 для быстрого использования
    local swep = ply:GetActiveWeapon()
    if not IsValid(swep) then return end

    local count = swep:GetMaxClip1()
    local price = count * PricePerBullet
    if price < 1 or not ply:canAfford(price) then return end

    ply:addMoney(-price)
    ply:GiveAmmo(count, game.GetAmmoName(swep:GetPrimaryAmmoType()))
end)