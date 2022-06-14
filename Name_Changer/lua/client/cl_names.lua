
function NamePanel( ply, text )
--[[-------------------------------------------------------------------------
=====================================FONTS===================================
---------------------------------------------------------------------------]]
surface.CreateFont( "exitfont", {
 font = "BebasNeue",
 size = 15,
 weight = 500,
 antialias = true,
} )

surface.CreateFont( "exitfontb", {
 font = "BebasNeue",
 size = 15,
 weight = 900,
 antialias = true,
} )
--[[-------------------------------------------------------------------------
=================================FRAME AND BG================================
---------------------------------------------------------------------------]]
     frame = vgui.Create( "DFrame" )
    	frame:SetSize( 500, 230 )
    	frame:Center()
    	frame:MakePopup()
    	frame:SetDraggable(false)
    	frame:ShowCloseButton(false)
    	frame:SetTitle('')
    	frame:SetBackgroundBlur(true)

    bg = vgui.Create('DLabel',frame)
    	bg:SetSize(500, 230)
    	bg:SetPos(0, 0)
    	bg.Paint = function()
		surface.SetDrawColor(33,42,49,255)
		surface.DrawRect(0,0,500,800)
	end
		bg:SetText('')

--[[-------------------------------------------------------------------------
==================================HELP TEXT==================================
---------------------------------------------------------------------------]]

	plt = vgui.Create('DLabel',frame)
		plt:SetSize(500,200)
		plt:SetPos(180,5)
		plt:SetFont('exitfont')
		plt:SetText('                    Подсказка:\nДля изменения имени введите имя в поле имя,а \nфамилию в поле Фамилия.\n                    ВАЖНО!\nВ случае некорректного имени администрация может\nзаблокировать Ваш аккаунт! \nПример корректного имени: Иван Иванов.\nВаши имя и фамилия должны быть на Русском языке\nСмена имени стоит 15.000₽')

--[[-------------------------------------------------------------------------
==================================HEAD TEXT==================================
---------------------------------------------------------------------------]]

	logotext = vgui.Create('DLabel',frame)
		logotext:SetSize(150,20)
		logotext:SetPos(230,2)
		logotext:SetFont('exitfontb')
		logotext:SetText('Смена имени')

--[[-------------------------------------------------------------------------
=================================EXIT BUTTON=================================
---------------------------------------------------------------------------]]

	ext = vgui.Create('DButton',frame)
		ext:SetSize(20,20)
	   	ext:SetPos(476,4)
	   	ext:SetText('X')
	   	ext:SetFont('exitfontb')
	   	ext:SetTextColor(Color(255,255,255,255))
	   	ext.DoClick = function() frame:Close() end

    extl = vgui.Create('DLabel',bg)
	   	extl:SetSize(20,20)
	   	extl:SetPos(476,4)
	   	extl:SetText('X')
	   	ext.Paint = function()
			    surface.SetDrawColor(160,29,29,255)
			    surface.DrawRect(0,0,20,20)
		    end

--[[-------------------------------------------------------------------------
=================================NAME PANELS=================================
---------------------------------------------------------------------------]]

	nfr = vgui.Create('DLabel',frame)
		nfr:SetPos(27,25)
		nfr:SetText('Имя:')
		nfr:SetSize(40,20)

     TextEntry = vgui.Create( "DTextEntry", frame )
    	TextEntry:SetPos( 25, 40 )
    	TextEntry:SetSize( 134, 35 )
    	TextEntry:SetText( "" )
    	TextEntry.OnChange = function( self )
        	frame.fname = self:GetValue()  
    end

--[[-------------------------------------------------------------------------
===============================SURNAME PANELS================================
---------------------------------------------------------------------------]]

    nfr = vgui.Create('DLabel',frame)
		nfr:SetPos(27,75)
		nfr:SetText('Фамилия:')
		nfr:SetSize(150,20)
 
     TextEntry2 = vgui.Create( "DTextEntry", frame )
    	TextEntry2:SetPos( 25, 90 )
    	TextEntry2:SetSize( 134, 35 )
    	TextEntry2:SetText( "" )
    	TextEntry2.OnChange = function( self )
    		frame.lname = self:GetValue()
    	end

--[[-------------------------------------------------------------------------
==============================CHANGENAME BUTTON==============================
---------------------------------------------------------------------------]]
     	
    	btn = vgui.Create('DButton',frame)
		btn:SetSize(135,35)
	   	btn:SetPos(25,140)
	   	btn:SetText('Сменить имя')
	   	btn:SetFont('exitfont')
	   	btn:SetTextColor(Color(33,42,49,255))
	   	btn.Paint = function()
			    surface.SetDrawColor(206,179,28,255)
			    surface.DrawRect(0,0,135,35)
		    end
	   	btn.DoClick = function()
		    if frame.fname and frame.lname ~= nil then
		    net.Start( 'chname' )      
		        net.WriteString( frame.fname)
		        net.WriteString( frame.lname)  
		    net.SendToServer()
		    frame:Close() 
		    else 
		    	nname = vgui.Create('DLabel',frame)
		    	nname:SetPos(25,190)
		    	nname:SetSize(140,10)
		    	nname:SetFont('exitfontb')
		    	nname:SetText('Не введён никнейм')
		    	nname:SetTextColor(Color(255,0,0,255))
	   	 end

    cbtn = vgui.Create('DLabel',bg)
	   	cbtn:SetSize(135,35)
	   	cbtn:SetPos(25,140)
	   	cbtn:SetText('')
	   	
    
end
 
end

 --[[-------------------------------------------------------------------------
==================================NET RECEIVE=================================
---------------------------------------------------------------------------]]
 
net.Receive('opdp',function()
 
    NamePanel()
 
end)
 
print('[NC] Loading clientside complete!')
