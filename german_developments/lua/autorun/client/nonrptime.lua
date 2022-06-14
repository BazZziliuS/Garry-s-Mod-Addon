surface.CreateFont( "NonRPText", {
	font = "Arial",
	size = 30,
	weight = 5000,
	antialias = true,
} )

surface.CreateFont( "NonRPTextDown", {
	font = "Arial",
	size = 25,
	weight = 500,
	antialias = true,
} )

hook.Add("HUDPaint","NonRPTime", function()
	if #player.GetAll() < 3 then
       draw.SimpleText("NonRP Time","NonRPText",50,39,Color(220,20,60,255))
       draw.SimpleText("На данный момент на сервере отключен RP процесс.","NonRPTextDown",50,60,Color(255, 165, 0,255))
       draw.SimpleText("Онлайн на сервере: "..#player.GetAll().."/3","NonRPTextDown",50,80,Color(255,215,0,255))
	end
end)



surface.CreateFont( "TimerText", {
	font = "Comfortaa",
	size = 25,
	weight = 500,
	blursize = 0, 
	scanlines = 0, 
	antialias = true, 
	underline = false, 
	italic = false, 
	strikeout = false, 
	symbol = false, 
	rotary = false, 
	shadow = true, 
	additive = false, 
	outline = false, } )

-- local x,y = 1750, 22
local x,y = ScrW(), ScrH()

hook.Add("HUDPaint","LogoPlacer", function()
	local glow = math.abs(math.sin(CurTime() * 1.5) * 255)
	local sin = (math.sin(CurTime()) + 1) / 2
	local ourMat = Material( "materials/logo/rp.png" )
	
	-- Фон
	draw.RoundedBox(6, x-240, 20, 250, 70, Color(40, 40, 40,250))

	--  Картинка
	surface.SetMaterial( ourMat )
	surface.SetDrawColor( 255, 255, 255)
	surface.DrawTexturedRect( x-237, 20, 70, 70 )
	
	--  Текст
	draw.SimpleText(os.date('%H:%M:%S - %d/%m/%Y', os.time()),"TimerText",x-165,20,Color(255, 255, 255,255))
    draw.SimpleText('Прекрасное РП ',"TimerText",x-165,40,Color(255, 255, 255,255)) -- 255 замени на glow чтобы он менял цвет // sin * 255
    draw.SimpleText("Онлайн: "..player.GetCount().."/"..game.MaxPlayers().."", "TimerText", x-165,60, Color(255, 255,255))
end)

--[[
hook.Add("HUDPaint","LogoPlacer", function()
	local glow = math.abs(math.sin(CurTime() * 1.5) * 255)
	local ourMat = Material( "materials/logo/rp.png" )
	
	-- Фон
	draw.RoundedBox(6, x-240, 20, 250, 90, Color(40, 40, 40,250))

	--  Картинка
	surface.SetMaterial( ourMat )
	surface.SetDrawColor( 255, 255, 255)
	surface.DrawTexturedRect( x-237, 30, 70, 70 )
	
	--  Текст
	draw.SimpleText(os.date('%H:%M:%S - %d/%m/%Y', os.time()),"TimerText",x-165,20,Color(255, 255, 255,255))
    draw.SimpleText('Прекрасное РП ',"TimerText",x-165,40,Color(255, 255, 255,255)) -- 255 замени на glow чтобы он менял цвет
    draw.SimpleText("Онлайн: "..player.GetCount().."/"..game.MaxPlayers().."", "TimerText", x-165,60, Color(255, 255,255))
    draw.SimpleText("IP: "..game.GetIPAddress().."", "TimerText", x-165,80, Color(255, 255,255))
end)
]]