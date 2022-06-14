
net.Receive( "ClearLagsDed", function( len)
	--RunConsoleCommand( "r_shadows", 1 )
	--RunConsoleCommand( "r_shadowrendertotexture", 0 ) --фонаркитссс
	--RunConsoleCommand( "r_shadowmaxrendered", 32 ) --фонаркитссс
	--RunConsoleCommand( "mat_shadowstate", 1 ) --фонаркитссс

	RunConsoleCommand( "cl_interp", 0.116700 )
	RunConsoleCommand( "cl_interp_ratio", 2 )
	RunConsoleCommand( "cl_updaterate", 16 )
	RunConsoleCommand( "cl_cmdrate", 16 )
	--// Disable Gibs
	RunConsoleCommand( "cl_phys_props_enable" , 0 )
	RunConsoleCommand( "cl_phys_props_max" , 0 )
	RunConsoleCommand( "props_break_max_pieces" , 0 )
	RunConsoleCommand( "r_propsmaxdist" , 1 )
	RunConsoleCommand( "violence_agibs" , 0 )
	RunConsoleCommand( "violence_hgibs" , 0 )

	RunConsoleCommand("cl_threaded_bone_setup", 1)
	RunConsoleCommand("cl_threaded_client_leaf_system", 1)
	RunConsoleCommand("r_threaded_client_shadow_manager", 1)
	RunConsoleCommand("r_threaded_particles", 1)
	RunConsoleCommand("r_threaded_renderables", 1)
	RunConsoleCommand("r_queued_ropes", 1)
	RunConsoleCommand("studio_queue_mode", 1)
	RunConsoleCommand("gmod_mcore_test", 1)
	RunConsoleCommand("cl_threaded_bone_setup", 1)
	RunConsoleCommand("cl_threaded_client_leaf_system" , 1)
	
	RunConsoleCommand("r_threaded_client_shadow_manager", 1)
	RunConsoleCommand("r_threaded_particles", 1)
	RunConsoleCommand("r_drawmodeldecals", 0)
	RunConsoleCommand("r_threaded_renderables", 1)
	RunConsoleCommand("r_queued_ropes", 1)
	RunConsoleCommand("studio_queue_mode", 1)
	RunConsoleCommand("gmod_mcore_test", 1)
	RunConsoleCommand("clear", 1)
	--if GetConVar("mat_specular"):GetFloat() == 1 then
	--	RunConsoleCommand("mat_specular", 0)
	--end
end)


 -- ТУМАН ВОКРУГ ИГРОКА
hook.Add( "SetupWorldFog", "FoxController", function()
	if globalFogDed then 
		render.FogMode( 1 ) 
		render.FogStart( globalFogDed-600 )
		render.FogEnd( globalFogDed -200 )
		render.FogMaxDensity( 1 )

		local col = Vector(0.8,0.8,0.8)
		render.FogColor( col.x * 255, col.y * 255, col.z * 255 )

		return true
	end
end )


-- ЗАКРАС СКАЙБОКСА В СПЛОШНОЙ ЦВЕТ
hook.Add( "SetupSkyboxFog", "FoxControllerSky", function()
	if globalFogDed then 
		render.FogMode(MATERIAL_FOG_LINEAR)
		render.FogStart( (globalFogDed-800)/16-(200/16) )
		render.FogEnd( globalFogDed/16-(200/16)  )
		render.FogMaxDensity( 1 )

		local col = Vector(0.8,0.8,0.8)
		render.FogColor( col.x * 255, col.y * 255, col.z * 255 )

		return true
	end
end )

