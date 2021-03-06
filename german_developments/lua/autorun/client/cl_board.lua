local positions = {
    rp_bangclaw_easy = {
        {Pos = Vector( -3002.5, 1843, 330 ), Ang = Angle( 0, 90, 90 ), Size = {w = 564, h = 294}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        {Pos = Vector( -1549, 3907.4, 348.1 ), Ang = Angle( 0, 0, 90 ), Size = {w = 564, h = 294}, Name = "nabor", URL = "https://i.imgur.com/zgiVyd9.png"},
        {Pos = Vector( -634.8, 5039, 363 ), Ang = Angle( 0, 90, 90 ), Size = {w = 564, h = 294}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        {Pos = Vector( -4248, 1035, 15 ), Ang = Angle( 0, 149.8, 11 ), Size = {w = 170, h = 170}, Name = "bannercube", URL = "https://i.imgur.com/OD0MbjZ.png"},
        {Pos = Vector( -1966, 4050, 23.6 ), Ang = Angle( 0, 240, 11 ), Size = {w = 170, h = 170}, Name = "bannercube", URL = "https://i.imgur.com/OD0MbjZ.png"},
        {Pos = Vector( 4549.5, 3085, 275), Ang = Angle( 0, 90, 90 ), Size = {w = 564, h = 294}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        {Pos = Vector(  1287.1, 660, -1135), Ang = Angle( 0, 90, 90 ), Size = {w = 634, h = 226}, Name = "bannerjail", URL = "https://i.imgur.com/lhyMUrw.png"},
        {Pos = Vector( 323.4, 2226, 301 ), Ang = Angle( 0, 90, 90 ), Size = {w = 758, h = 374}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        {Pos = Vector( -22.9, 2459, 301 ), Ang = Angle( 0, 180, 90 ), Size = {w = 758, h = 374}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        {Pos = Vector( -369.7, 2225, 301 ), Ang = Angle( 0, 270, 90 ), Size = {w = 758, h = 374}, Name = "banner", URL = "https://i.imgur.com/jX5GU9o.png"},
        -- {Pos = Vector( -1676, 2956, 317 ), Ang = Angle( 0, 0, 90 ), Size = {w = 124, h = 630}, Name = "nabor", URL = "https://i.imgur.com/zgiVyd9.png"},
        -- {Pos = Vector( -1676, 2972, 317 ), Ang = Angle( 0, 180, 90 ), Size = {w = 124, h = 630}, Name = "nabor", URL = "https://i.imgur.com/zgiVyd9.png"},
        --  КАЗИНО
        -- {Pos = Vector( 474.02, 204, 180 ), Ang = Angle( 0, 90, 90 ), Size = {w = 180, h = 280}, Name = "casino", URL = "https://i.imgur.com/jrnGlRV.png"},
        -- {Pos = Vector( 474.02, 76, 180 ), Ang = Angle( 0, 90, 90 ), Size = {w = 180, h = 280}, Name = "casino", URL = "https://i.imgur.com/jrnGlRV.png"},
        -- {Pos = Vector( 490.02, -308, 188 ), Ang = Angle( 0, 90, 90 ), Size = {w = 180, h = 280}, Name = "casino", URL = "https://i.imgur.com/jrnGlRV.png"},
        -- {Pos = Vector( 490.02, -436, 188 ), Ang = Angle( 0, 90, 90 ), Size = {w = 180, h = 280}, Name = "casino", URL = "https://i.imgur.com/jrnGlRV.png"},
        -- {Pos = Vector( 573, -497.9, 166.9 ), Ang = Angle( 0, 180, 90 ), Size = {w = 186, h = 336}, Name = "casino2", URL = "https://i.imgur.com/lnRJ7g3.png"},
        -- {Pos = Vector( 683, -497.9, 166.9 ), Ang = Angle( 0, 180, 90 ), Size = {w = 186, h = 336}, Name = "casino2", URL = "https://i.imgur.com/lnRJ7g3.png"},
    }
}

if not file.Exists("Precrasnoe_RP", "DATA") then
    file.CreateDir("Precrasnoe_RP")
    file.Write( "Precrasnoe_RP/readme.txt", "Хей! Заходи к нам " ..game.GetIPAddress().. "\nУ нас много интересного :)\n--  ПРЕКРАСНОЕ РП\n--  discord.gg/2GQxXn2uQH\n--  vk.com/prekrasnoerp" )
end

for k, v in pairs(positions[game.GetMap()]) do
    http.Fetch( v.URL, function( data )
        file.Write( "Precrasnoe_RP/".. v.Name .. ".png", data )
    end )
end

hook.Add( "PostDrawTranslucentRenderables", "PrekrasnoeRPBanner", function()
if not positions[game.GetMap()] then return end
    local lp_pos = LocalPlayer():GetPos()
    for k, v in pairs(positions[game.GetMap()]) do
        if lp_pos:DistToSqr( v.Pos ) < 9000000 then
            local w,h = v.Size.w, v.Size.h
            cam.Start3D2D( v.Pos, v.Ang, 0.4 ) -- Тут выставляется размер картинки
                surface.SetMaterial( Material( "data/Precrasnoe_RP/"  .. v.Name .. ".png" ) )
                surface.SetDrawColor( Color( 255, 255, 255 ) )
                surface.DrawTexturedRect( -w/2, -h/2, w, h )
            cam.End3D2D( )
        end
    end
end )