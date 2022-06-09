

hook.Add("Initialize","NoWidgets",function()

 	-- Usually the cause of some if not most lag.
 	hook.Remove("PlayerTick", "TickWidgets")
 
 	if SERVER then
 		if timer.Exists("CheckHookTimes") then
 			timer.Remove("CheckHookTimes")
 		end
 	end
	
 	hook.Remove("PlayerTick","TickWidgets")
	hook.Remove( "Think", "CheckSchedules")
	timer.Destroy("HostnameThink")
	hook.Remove("LoadGModSave", "LoadGModSave")
		
	for k, v in pairs(ents.FindByClass("env_fire")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("trigger_hurt")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("prop_physics")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("prop_ragdoll")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("light")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("spotlight_end")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("beam")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("point_spotlight")) do v:Remove() end
	for k, v in pairs(ents.FindByClass("env_sprite")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("func_tracktrain")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("light_spot")) do v:Remove() end
	for k,v in pairs(ents.FindByClass("point_template")) do v:Remove() end
	
	// Remove a bunch of useless map stuff 
	
	 if CLIENT then
 		-- These call on bloated convar getting methods and aren't ever used anyway outside of sandbox.
 		hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
 		hook.Remove("RenderScreenspaceEffects", "RenderBloom")
 		hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
 		hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
 		hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
 		hook.Remove("RenderScreenspaceEffects", "RenderSobel")
 		hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
 		hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
 		hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
 		hook.Remove("RenderScene", "RenderStereoscopy")
 		hook.Remove("RenderScene", "RenderSuperDoF")
 		hook.Remove("GUIMousePressed", "SuperDOFMouseDown")
 		hook.Remove("GUIMouseReleased", "SuperDOFMouseUp")
 		hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks")
 		hook.Remove("PostRender", "RenderFrameBlend")
 		hook.Remove("PreRender", "PreRenderFrameBlend")
 		hook.Remove("Think", "DOFThink")
 		hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
 		hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
 		hook.Remove("PostDrawEffects", "RenderWidgets")  		-- We don't need this, but what the hell.
 		hook.Remove("PostDrawEffects", "RenderHalos") 		-- If you have pointshop issues, then delete this line.
 	end
	
end)


 if CLIENT then
	 hook.Add("PlayerFinishedLoading","CSS_Check.PlayerIsLoaded",function()
		if IsMounted(240)
			then return 
		else 
			chat.AddText("Похоже, у тебя нет контента Counter-Strike: Source, скачай ее в Steam или найди контент.")
		end 
	end)
	hook.Add("ChatText","hide_joinleave",function(r,r,r,e)
		if e=="joinleave"
			then return true 
		end 
	end)
	local s=CreateClientConVar('rp_viewdist',2500,true)
	hook.Add("NetworkEntityCreated","RenderModel",function(e)
		timer.Simple(1,function()
			if not IsValid(e) then 
				return end 
				e.RenderOverride=function(r)
					local e=s:GetInt()
					if(EyePos():DistToSqr(r:GetPos())<e*e) then 
						r:DrawModel()
					end 
				end 
			end)
	end)
	hook.Add("OnEntityCreated","ENPC.OnEntityCreated.Jobs",function(e)
		if e~=LocalPlayer() then return end 
		RunConsoleCommand("rope_smooth","0")
		RunConsoleCommand("Rope_wind_dist","0")
		RunConsoleCommand("Rope_shake","0")
		RunConsoleCommand("violence_ablood","1")
		RunConsoleCommand("mat_queue_mode","-1")
		RunConsoleCommand("cl_threaded_bone_setup","1")
		RunConsoleCommand("gmod_mcore_test","1")
		RunConsoleCommand("cl_threaded_client_leaf_system","0")
		RunConsoleCommand("r_queued_ropes","1")
		RunConsoleCommand("r_threaded_client_shadow_manager","1")
		RunConsoleCommand("r_fastzreject","-1")
		RunConsoleCommand("Cl_ejectbrass","0")
		RunConsoleCommand("Muzzleflash_light","0")
		RunConsoleCommand("cl_wpn_sway_interp","0")
		RunConsoleCommand("in_usekeyboardsampletime","0")
	end)
end

if CLIENT then
	hook.Add( "PlayerIsLoaded", "mcorrendesssrring", function()
	--RunConsoleCommand( "r_shadows", 1 )
	--RunConsoleCommand( "r_shadowrendertotexture", 0 ) --фонаркитссс
	--RunConsoleCommand( "r_shadowmaxrendered", 32 ) --фонаркитссс
	--RunConsoleCommand( "mat_shadowstate", 1 ) --фонаркитссс

	-- RunConsoleCommand( "cl_interp", 0.116700 )
	-- RunConsoleCommand( "cl_interp_ratio", 2 )
	-- RunConsoleCommand( "cl_updaterate", 16 )
	-- RunConsoleCommand( "cl_cmdrate", 16 )
	-- --// Disable Gibs
	-- RunConsoleCommand( "cl_phys_props_enable" , 0 )
	-- RunConsoleCommand( "cl_phys_props_max" , 0 )
	-- RunConsoleCommand( "props_break_max_pieces" , 0 )
	-- RunConsoleCommand( "r_propsmaxdist" , 1 )
	-- RunConsoleCommand( "violence_agibs" , 0 )
	-- RunConsoleCommand( "violence_hgibs" , 0 )

	-- RunConsoleCommand("cl_threaded_bone_setup", 1)
	-- RunConsoleCommand("cl_threaded_client_leaf_system", 1)
	-- RunConsoleCommand("r_threaded_client_shadow_manager", 1)
	-- RunConsoleCommand("r_threaded_particles", 1)
	-- RunConsoleCommand("r_threaded_renderables", 1)
	-- RunConsoleCommand("r_queued_ropes", 1)
	-- RunConsoleCommand("studio_queue_mode", 1)
	-- RunConsoleCommand("gmod_mcore_test", 1)
	-- RunConsoleCommand("cl_threaded_bone_setup", 1)
	-- RunConsoleCommand("cl_threaded_client_leaf_system" , 1)
	
	-- RunConsoleCommand("r_threaded_client_shadow_manager", 1)
	-- RunConsoleCommand("r_threaded_particles", 1)
	-- RunConsoleCommand("r_drawmodeldecals", 0)
	-- RunConsoleCommand("r_threaded_renderables", 1)
	-- RunConsoleCommand("r_queued_ropes", 1)
	-- RunConsoleCommand("studio_queue_mode", 1)
	-- RunConsoleCommand("gmod_mcore_test", 1)
	--if GetConVar("mat_specular"):GetFloat() == 1 then
	--	RunConsoleCommand("mat_specular", 0)
	--end
end)
end

local cmdlist = {

	--r_shadows = { 0, GetConVarNumber },

	r_shadowrendertotexture = { 0, GetConVarNumber },

	r_shadowmaxrendered = { 0, GetConVarNumber },

	mat_shadowstate = { 0, GetConVarNumber },

	cl_phys_props_enable = { 0, GetConVarNumber },

	cl_phys_props_max = { 0, GetConVarNumber },

	props_break_max_pieces = { 0, GetConVarNumber },

	r_propsmaxdist = { 0, GetConVarNumber },



	r_drawmodeldecals = { 0, GetConVarNumber },

	cl_threaded_bone_setup = { 1, GetConVarNumber },

	cl_threaded_client_leaf_system = { 1, GetConVarNumber },

	r_threaded_client_shadow_manager = { 1, GetConVarNumber },

	r_threaded_particles = { 1, GetConVarNumber },

	r_threaded_renderables = { 1, GetConVarNumber },

	r_queued_ropes = { 1, GetConVarNumber },

	studio_queue_mode = { 1, GetConVarNumber },

	mat_queue_mode = { 2, GetConVarNumber },

	gmod_mcore_test = { 1, GetConVarNumber },

}



local detours = {}



for k,v in pairs( cmdlist ) do

	detours[k] = v[2](k)

	RunConsoleCommand(k, v[1])

end



hook.Add( 'ShutDown', 'roll back convars', function()

	for k,v in pairs(detours) do

		RunConsoleCommand(k,v)

	end

end)



hook.Add("OnAchievementAchieved", "gay2", function() return true end)