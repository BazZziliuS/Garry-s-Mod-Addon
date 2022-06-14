local camS=cam.Start3D2D
local camE=cam.End3D2D
local playerGA=player.GetAll
local drawST=draw.SimpleText
local teamGC=team.GetColor
local abs,sin,floor,Round = math.abs,math.sin,math.floor,math.Round
local curtime = CurTime
local Color=Color
local Vector=Vector
local Angle=Angle
local surface=surface

local eyepos

surface.CreateFont("3D2DTagsTagFont", {
    font = "Comfortaa",
    size = 100,
    weight = 400,
    antialias = true,
    additive = false,
})
 
surface.CreateFont("3D2DTagsTagFont_Blur", {
    font = "Comfortaa",
    size = 100,
    weight = 400,
    antialias = true,
    additive = false,
    blursize = 8,
})

local drawables = {}
hook.Add("PostPlayerDraw", "TypingTag", function(pl) drawables[pl] = true end)

hook.Add("PostPlayerDraw", "SpeakTag", function(pl) drawables[pl] = true end)

hook.Add("RenderScene", "3D2DTagPosAng",function(pos) eyepos = pos end)

local function DrawText(txt, color, x, y)
    for i=1,2 do
        drawST(txt, "3D2DTagsTagFont_Blur", x, y, Color(0,0,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
    drawST(txt, "3D2DTagsTagFont", x, y, color, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
end

hook.Add("PostDrawTranslucentRenderables", "SpeakTag", function()
	for v,ply in pairs(playerGA()) do
		if !ply:IsSpeaking() then continue end
		if ply.IsAFK and ply:IsAFK() then continue end
		if drawables[ply] then
			drawables[ply] = false
			
			local dist = ply:GetPos():Distance(eyepos)
			if dist < 350 and ply:Alive() then
				local bone = ply:LookupAttachment("eyes")
				if bone != 0 then			
					local attach = ply:GetAttachment(bone)
				
					camS(attach.Pos + Vector(0, 0, 10), Angle(0, (attach.Pos - eyepos):Angle().y - 90, 90), 0.035)
						DrawText("Говорит"..("."):rep(math.Round(math.abs(math.sin(CurTime()*0.7)*3))), Color(255, 255, 255), 0, 0)
					camE()
				end
			end
		end
	end
end)

local phrases = {
    "Что-то печатает", "Надеюсь, что это ненадолго", "Скоро допечатает", "Печатает", "Хочет написать книгу", "Вероятно, пишет промокод"
}
local afk_phrases = {
    "Пьёт чай", "Вероятно, спит", "Отошёл", "Зева-а-а-ет", "Zzz", "Мирно мечтает", "Отрубился", "Вышел на прогулку", "Мозговой штурм", "Не хватает кофе", "Мама позвала", "Кушать ушел"
}
hook.Add("PostDrawTranslucentRenderables", "TypingTag", function()
	for v,ply in pairs(playerGA()) do
			if drawables[ply] then
				drawables[ply] = false
				
				local dist = ply:GetPos():Distance(eyepos)
				if dist < 350 and ply:Alive() then
					local bone = ply:LookupAttachment("eyes")
					if bone != 0 then			
						local attach = ply:GetAttachment(bone)
						camS(attach.Pos + Vector(0, 0, 10), Angle(0, (attach.Pos - eyepos):Angle().y - 90, 90), 0.035)
							if ply:IsTyping() and ply:SteamID() == "STEAM_0:0:86044278" then
								DrawText(phrases[floor((curtime()/4 + ply:EntIndex())%#phrases) + 1]..("."):rep(math.Round(math.abs(math.sin(CurTime()*0.7)*3))), Color(255, 255, 255), 0, 0)
							elseif ply:IsTyping() then
								DrawText("Печатает"..("."):rep(Round(abs(sin(curtime()*0.7)*3))), Color(255, 255, 255), 0, 0)
							end
						camE()
					end
					end
					
				
			
		elseif ply.IsAFK and ply:IsAFK() then
			if drawables[ply] then
				drawables[ply] = false
				
				local dist = ply:GetPos():Distance(eyepos)
				if dist < 350 and ply:Alive() then
					local bone = ply:LookupAttachment("eyes")
					if bone != 0 then			
						local attach = ply:GetAttachment(bone)
						camS(attach.Pos + Vector(0, 0, 10), Angle(0, (attach.Pos - eyepos):Angle().y - 90, 90), 0.035)
							DrawText(afk_phrases[floor((curtime()/4 + ply:EntIndex())%#afk_phrases) + 1]..("."):rep(math.Round(math.abs(math.sin(CurTime()*0.7)*3))), Color(255, 255, 255), 0, 0)
						camE()
					end
					end
					end
					end
					end
					end )