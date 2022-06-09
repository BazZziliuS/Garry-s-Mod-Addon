hook.Add( "PlayerSay", "Killurself", function( ply, text, public )
	text = string.lower( text ) 
	
	if ( text == "!event" ) then
		ply:SetPos(Vector(12023, 4747, 56))
			for k, v in pairs ( player.GetAll() ) do
				v:SendLua( [[chat.AddText( Color( 255,120,0),"]].."[WARP]"..[[", Color(255,255,255), ": ]]..ply:Name().." телепортировался в EventZone" ..[[")]] )
			end
	elseif ( text == "!admz" ) and ply:IsUserGroup( "superadmin" ) or ply:IsUserGroup( "admin" ) or ply:IsUserGroup( "curator" ) or ply:IsUserGroup( "moder" ) or ply:IsUserGroup( "helper" ) then
		ply:SetPos(Vector(1129.236328, 1565.110840, -1140.308838))

	elseif ( text == "!spawn" ) and ply:IsUserGroup( "superadmin" ) or ply:IsUserGroup( "admin" ) or ply:IsUserGroup( "curator" ) or ply:IsUserGroup( "moder" ) or ply:IsUserGroup( "helper" ) then
		ply:SetPos(Vector(-3708.451904, 2410.611572, 66.196304))
			
	end
end )
