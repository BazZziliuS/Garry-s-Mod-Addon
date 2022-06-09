local PROP_PRICE = 100

hook.Add("PlayerSpawnedProp", "PropSalary" , function(pl)
    if not pl:canAfford(PROP_PRICE) then
        pl:ChatPrint("Нет денег на покупку пропа")
        return false
    end

    pl:addMoney(-PROP_PRICE)
    DarkRP.notify(pl, 0, 5, "Вы купили проп за " .. PROP_PRICE .. "₽")
end)