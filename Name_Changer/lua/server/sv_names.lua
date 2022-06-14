
util.AddNetworkString( "chname" )
util.AddNetworkString('opdp')
 
local firstnames = { 'Смирнов', 'Иванов', 'Кузнецов', 'Соколов', 'Попов', 'Лебедев',
'Козлов', 'Новиков', 'Морозов', 'Петров', 'Волков', 'Соловьёв',
'Васильев', 'Зайцев', 'Павлов', 'Семёнов', 'Голубев', 'Виноградов',
'Богданов', 'Воробьёв', 'Фёдоров', 'Михайлов', 'Беляев', 'Тарасов', 'Белов' }
 
local lastnames = {'Артём ', 'Александр', 'Максим', 'Даниил', 'Дмитрий', 'Иван',
'Кирилл', 'Никита', 'Михаил', 'Матвей', 'Андрей', 'Илья', 'Алексей', 'Роман',
'Сергей', 'Владислав', 'Ярослав', 'Тимофей', 'Денис', 'Владимир', 'Павел',
'Константин', 'Евгений', 'Юрий', 'Макар', 'Мирон', 'Олег',}
 
hook.Add( "PlayerInitialSpawn", "changeNameOnSpawn", function( ply )
 
    if(!ply:GetPData("forcedName", false)) then
 
        local delay = 10
 
        timer.Simple( delay , function()
 
            local firstname = table.Random( firstnames )
 
            local lastname = table.Random( lastnames )
 
            ply:setRPName( lastname .. " " .. firstname )
 
            ply:SetPData("forcedName", true)
 
        end )
 
    end
 
end )
 
print('[NC] Loading serverside complete!')
 
 
 
-- hook.Add( "PlayerSay", "PlayerSayExample", function( ply, text, team )
--     if ( string.lower( text ) == "!chname" ) then
--         net.Start( 'opdp' )
--         net.Send(ply)
--         return ""
--     end
-- end )
 
net.Receive("chname", function(len, pl)
    local fname = net.ReadString()
    local lname = net.ReadString()
    local NAME_PRICE = 15000
    pl:setRPName(fname .. " " .. lname)
    pl:addMoney(-NAME_PRICE)
    DarkRP.notify(pl, 0, 5, "Вы сменили имя за " .. NAME_PRICE .. "₽")
end)
