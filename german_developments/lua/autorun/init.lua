
local badhooks = {
	RenderScreenspaceEffects = {
		'RenderBloom',
		'RenderBokeh',
		--'RenderColorModify',
		--'RenderMotionBlur',
		'RenderMaterialOverlay',
		'RenderSharpen',
		'RenderSobel',
		'RenderStereoscopy',
		'RenderSunbeams',
		'RenderTexturize',
		'RenderToyTown',
	},
	PreDrawHalos = {
		'PropertiesHover'
	},
	RenderScene = {
		'RenderSuperDoF',
		'RenderStereoscopy',
	},
	PreRender = {
		'PreRenderFlameBlend',
	},
	PostRender = {
		'RenderFrameBlend',
		'PreRenderFrameBlend',
	},
	PostDrawEffects = {
		'RenderWidgets',
		'RenderHalos',
	},
	GUIMousePressed = {
		'SuperDOFMouseDown',
		'SuperDOFMouseUp'
	},
	Think = {
		'DOFThink',
	},
	PlayerTick = {
		'TickWidgets',
	},
	PlayerBindPress = {
		'PlayerOptionInput'
	},
	NeedsDepthPass = {
		'NeedsDepthPass_Bokeh',
	},
	OnGamemodeLoaded = {
		'CreateMenuBar',
	}
}

local function RemoveHooks()
	for k, v in pairs(badhooks) do
		for _, h in ipairs(v) do
			hook.Remove(k, h)
		end
	end
end

RemoveHooks()

hook.Add('PropBreak', 'Jervisss_DRP_RemoveHook', function(attacker, ent)
	if IsValid(ent) and ent:GetPhysicsObject():IsValid() then
		constraint.RemoveAll(ent)
	end
end)

local allowedDoors = {
	['prop_dynamic'] = true,
	['prop_door_rotating'] = true,
	[''] = true
}

hook.Add('CanTool', 'Doorfix', function(ply, trace, tool)
	if not IsValid(ply:GetActiveWeapon()) or not ply:GetActiveWeapon().GetToolObject or not ply:GetActiveWeapon():GetToolObject() then return end

	local tool = ply:GetActiveWeapon():GetToolObject()
	if not allowedDoors[string.lower(tool:GetClientInfo('door_class') or '')] then
		return false
	end
end)
