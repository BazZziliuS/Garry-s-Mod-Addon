
	CakeScreens = {}
	
	CakeScreens.MainScreen = {}
	
	CakeScreens.MainScreen.ActiveTab = 1
	
	local donate_text = [[
● Superadmin - Создатель.

● Гл.Администратор - Доверенные лица.

● Управляющий - Контролирующий процесс Администрации и сервера.

● Привилегированный - 1000 руб. на месяц 1900 руб. навсегда.

● Администратор 1 уровня - 750 руб. на месяц 1400 руб. навсегда.

● Администратор - 500 руб. на месяц 1000 руб. навсегда.

● Модератор - 250 руб. на месяц 500 руб. навсегда.

● Premium - 100 руб. на месяц 300 руб. навсегда.

--Привилегии у которых нет цены купить невозможно--

]]

	local rules_text = [[
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
]]
local messege =[[
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
			● Главное правило это играй так как хочешь чтобы играли и другие!
]]


local clanes = [[
● Привилегированный - 1000 руб. на месяц 1900 руб. навсегда.
]]

	CakeScreens.MainScreen.Tabs = {
		
		[1] = {
			
			Name = "Главная",
			
			Draw = function(x,y,w,h)
				
				
				
				draw.SimpleText( 'Dark.RP', 'MainScreenLogoLabel', x + w/2, -30 + h/2, Color( 255,255,255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
				draw.SimpleText( 'Прекрасное', 'MainScreenLogoLabel', x + w/2, -80 + h/2, Color( 255,255,255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
				draw.SimpleText( 'Спасибо, что выбрали нас!', 'MainScreenLogoSmallLabel', x + w/2, 10 + h/2, Color( 255,255,255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
				
				draw.RoundedBox( 6, x + w/2 - 300, h - 130, 600, 100, Color( 0,0,0,100) )
				draw.DrawText( "Есть автоматизированный донат на клавише F1    ", "MainScreenLogoSmallLabel", x + w/2, h-117, Color( 255,255,255 ), TEXT_ALIGN_CENTER )
				draw.DrawText( "Наш дискорд: discord.gg/2GQxXn2uQH    ", "MainScreenLogoSmallLabel", x + w/2, h-95, Color( 255,255,255 ), TEXT_ALIGN_CENTER )
				draw.DrawText( "Есть предложение? Пиши в дискорд!    ", "MainScreenLogoSmallLabel", x + w/2, h-74, Color( 255,255,255 ), TEXT_ALIGN_CENTER )
				draw.DrawText( "", "MainScreenLogoMoarSmallLabel", x + w/2, h-77, Color( 255,255,255 ), TEXT_ALIGN_CENTER )

				
				
			end,
			
		},
		
		-- [2] = {
			
		-- 	Name = "Донат",
			
		-- 	Draw = function(x,y,w,h)
				
		-- 		draw.RoundedBox( 0, x, y, w, 60, Color( 0,0,0,140 ) )
		-- 		draw.SimpleText( 'Иерархия', 'MainScreenHeader', x + w/2, y + 13, Color( 255,255,255 ), TEXT_ALIGN_CENTER, _ )
				
		-- 		draw.DrawText( donate_text, 'MainScreenLogoMoarSmallLabel', x + 3, y + 63, Color( 255,255,255 ) )
				
		-- 		draw.RoundedBox( 10, x + w - 200, y + h/2 - 50, 190, 100, Color( 0,0,0,100 ) )
				
		-- 		draw.DrawText( 'Покупка', 'MainScreenLogoSmallLabel', x + w - 105, y + h/2 - 40, Color( 255,255,255 ), TEXT_ALIGN_CENTER )
				
		-- 		draw.DrawText( 'Нажми ниже!', 'MainScreenLogoSmallLabel', x + w - 105, y + h/2, HSVToColor( 360 * math.sin( CurTime()*0.1 ), 1, 1 ), TEXT_ALIGN_CENTER )
					
		-- 	---
			
		-- 		local id = CakeScreens.Buttons.CreateButton( x + 590, y + 360, 222, 30, function()
		-- 			gui.OpenURL( "https://vk.com/codeshopgmod" )
		-- 		end)
				
		-- 		draw.RoundedBox( 6, x + 590, y+360, 200, 40, Color( 60,60,60,255 ) )
				
		-- 		if CakeScreens.Buttons.getButtonHover( id ) then
		-- 			draw.RoundedBox( 6, x + 590, y+360, 200, 40, Color( 255,255,255,10 ) )
		-- 		end
				
		-- 		draw.DrawText( 'Купить', 'MainScreenLogoSmallLabel', x + 660, y + 362, Color( 255,255,255 ) )
		-- 	---
		-- 	end,
			
		-- },
		
		[2] = {
			
			Name = "Правила",
			
			Draw = function(x,y,w,h)
				draw.RoundedBox( 0, x, y, w, 60, Color( 0,0,0,140 ) )
				draw.SimpleText( 'Правила', 'MainScreenHeader', x + w/2, y + 13, Color( 255,255,255 ), TEXT_ALIGN_CENTER, _ )
				
				draw.DrawText( rules_text, 'MainScreenLogoMoarSmallLabel', x + 3, y + 63, Color( 255,255,255 ) )
				
				local id = CakeScreens.Buttons.CreateButton( x + 290, y + 430, 222, 30, function()
					gui.OpenURL( "discord.gg/2GQxXn2uQH" )
				end)
				
				draw.RoundedBox( 6, x + 290, y+430, 222, 30, Color( 60,60,60,255 ) )
				
				if CakeScreens.Buttons.getButtonHover( id ) then
					draw.RoundedBox( 6, x + 290, y+430, 222, 30, Color( 255,255,255,10 ) )
				end
				
				draw.DrawText( 'Полный список правил', 'MainScreenLogoSmallLabel', x + 298, y + 432, Color( 255,255,255 ) )
				
				
				--
				
				---
				
			end,
			
		},
		
		-- [4] = {
				
		-- 		Name = "Кланы",
				
		-- 		Draw = function(x,y,w,h)
					
		-- 			draw.RoundedBox( 0, x, y, w, 60, Color( 0,0,0,140 ) )
		-- 			draw.SimpleText( 'Кланы', 'MainScreenHeader', x + w/2, y + 13, Color( 255,255,255 ), TEXT_ALIGN_CENTER, _ )
					
		-- 			draw.DrawText( clanes, 'MainScreenLogoMoarSmallLabel', x + 3, y + 63, Color( 255,255,255 ) )


		-- 		end,
				
		-- 	},
		
		[3] = {
			
			Name = "ЧаВо",
			
			Draw = function(x,y,w,h)
				
				draw.RoundedBox( 0, x, y, w, 60, Color( 0,0,0,140 ) )
				draw.SimpleText( 'Ответа на часто задаваемые вопросы', 'MainScreenHeader', x + w/2, y + 13, Color( 255,255,255 ), TEXT_ALIGN_CENTER, _ )
				
				draw.DrawText( messege, 'MainScreenLogoMoarSmallLabel', x + 3, y + 63, Color( 255,255,255 ) )

			-- draw.DrawText( '[Тут будет написаны возможные обновления и прочая информация]', 'MainScreenLogoSmallLabel', x + 90, y + 362, Color( 255,255,255 ) )
			-- draw.DrawText( '[Тут будет написаны возможные обновления и прочая информация]', 'MainScreenLogoSmallLabel', x + 90, y + 382, Color( 255,255,255 ) )
			-- draw.DrawText( '[Тут будет написаны возможные обновления и прочая информация]', 'MainScreenLogoSmallLabel', x + 90, y + 402, Color( 100,255,255 ) )
			draw.RoundedBox( 6, x + w/2 - 300, h - 80, 600, 60, Color( 0,0,0,100) )
			draw.DrawText( '             Так же свои вопросы можете задать в нашем дисокрде ', 'MainScreenLogoSmallLabel', x + 90, y + 430, Color( 100,255,255 ) )
			
			end,
			
		},
		
	}
		

	
	local origin = Vector(0, 0, 0)
	local angle = Angle(0, 0, 0)
	local normal = Vector(0, 0, 0)
	local scale = 0

	CakeScreens.canTouchThis = function()
		return LocalPlayer():GetPos():Distance( origin ) < 350
	end
	
	CakeScreens.Start3D2D = function( pos,ang,res )
	
		origin = pos
		scale = res
		angle = ang:Forward()
		
		normal = Angle( ang.p, ang.y, ang.r )
		normal:RotateAroundAxis( ang:Forward(), -90 )
		normal:RotateAroundAxis( ang:Right(), 90 )
		normal = normal:Forward()
		
		cam.Start3D2D( pos,ang,res )
		
	end
	
	CakeScreens.getCursorPos = function()
		local p = util.IntersectRayWithPlane(LocalPlayer():EyePos(), LocalPlayer():GetAimVector(), origin, normal)

		-- if there wasn't an intersection, don't calculate anything.
		if not p then return 0, 0 end

		local offset = origin - p
		
		local angle2 = angle:Angle()
		angle2:RotateAroundAxis( normal, 90 )
		angle2 = angle2:Forward()
		
		local offsetp = Vector(offset.x, offset.y, offset.z)
		offsetp:Rotate(-normal:Angle())

		local x = -offsetp.y
		local y = offsetp.z

		return x/scale, y/scale
	end
	
	function CakeScreens.InRange( val, min, max )
		return val >= min and val <= max
	end
	
	CakeScreens.Buttons = {}
	
	CakeScreens.Buttons.List ={}
	
	CakeScreens.Buttons.ClearButtons = function()
		
		CakeScreens.Buttons.List = {}
		
	end
	
	CakeScreens.Buttons.CreateButton = function(...)
		
		return table.insert( CakeScreens.Buttons.List, { ... } )
		
	end
	
	CakeScreens.Buttons.getButtonHover = function ( id )
		
		local x,y = CakeScreens.getCursorPos()
		
		local button = CakeScreens.Buttons.List[id]
		
		local bx, by, bw, bh = unpack( button )
		
		return CakeScreens.InRange( x, bx, bx+bw ) and CakeScreens.InRange( y, by, by+bh )
		
	end
	
	local MainScreenTabs = CakeScreens.MainScreen.Tabs
	
	surface.CreateFont("MainScreenTabLabel", {
		size = 23,
		weight = 300,
		antialias = true,
		shadow = false,
		font = "Comfortaa",
	})
	
	surface.CreateFont("MainScreenLogoLabel", {
		size = 64,
		weight = 300,
		antialias = true,
		shadow = false,
		font = "Comfortaa",
	})
	
	surface.CreateFont("MainScreenLogoSmallLabel", {
		size = 24,
		weight = 300,
		antialias = true,
		shadow = false,
		font = "Comfortaa",
	})
	
	surface.CreateFont("MainScreenHeader", {
		size = 32,
		weight = 300,
		antialias = true,
		shadow = false,
		font = "Comfortaa",
	})
	
	surface.CreateFont("MainScreenLogoMoarSmallLabel", {
		size = 20,
		weight = 300,
		antialias = true,
		shadow = false,
		font = "Comfortaa",
	})
	
	function CakeScreens.MainLuaScreen()
		
		CakeScreens.Start3D2D( Vector(-3108, 2220, 174.490601), Angle(0,270,90), 0.25 ) //Тут менять позицию
		
		draw.RoundedBox( 6, 105, 0, 800, 500, Color( 0,0,0,244 ) )
		draw.RoundedBox( 6, 108, 3, 794, 494, Color( 93,118,203,100 ) ) //Тут менять цвет
		
		CakeScreens.Buttons.ClearButtons()
		
		for i=1, #MainScreenTabs do
			
			local tab = MainScreenTabs[i]
			
			local y = (i-1) * 42
			
			local id = CakeScreens.Buttons.CreateButton( 0, y, 100, 40, function() CakeScreens.MainScreen.ActiveTab = i end )
			local hw = CakeScreens.Buttons.getButtonHover( id )
			
			
			draw.RoundedBox( 6, 0, y, 100, 40, Color( 60,60,60 ) )
			if hw then
				draw.RoundedBox( 6, 0, y, 100, 40, Color( 255,255,255,60 ) )
			end
			draw.SimpleText( tab.Name, "MainScreenTabLabel", 50, y + 18, Color( 255,255,255 ), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER )
			
	//draw.RoundedBoxEx( 0, 93, y, 10, 40, Color( 226,226,0 )		
			
			if CakeScreens.MainScreen.ActiveTab == i then
				draw.RoundedBoxEx( 6, 97, y, 3, 40, Color( 93,118,203 ), false, true, false, true )
				tab.Draw( 108, 3, 794, 494 )
			end
			
		end
		
		local x,y = CakeScreens.getCursorPos()
		
		draw.RoundedBox( 6, math.Clamp( x, 0, 900 ), math.Clamp( y, 0, 500 ), 6, 6, Color( 255,255,255 ) )
		
		cam.End3D2D()
	end
	
	hook.Add( 'PlayerBindPress', 'CakeRP Screens', function( ply, bind )
		
		if bind:find( "+use" ) or bind:find("+attack") then
			for k,v in pairs( CakeScreens.Buttons.List ) do
				if CakeScreens.Buttons.getButtonHover( k ) then
					v[5]()
				end
			end
		end
		
	end )
	
	local LineColor, BoxColor = Color(255,0,0,250), Color(0,0,0,30)
	

	
	function CakeScreens.Draw()
		if LocalPlayer():GetPos():Distance(Vector(-3128.223389, 2162.985840, 174.490601)) < 1000 then
			CakeScreens.MainLuaScreen()
		end
		if LocalPlayer():GetPos():Distance(Vector( -3128.223389, 2162.985840, 174.490601 )) < 300 then
		end
	end
	
	hook.Add( 'PostDrawTranslucentRenderables', 'Cakerp lua screens', CakeScreens.Draw )