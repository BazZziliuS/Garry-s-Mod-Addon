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