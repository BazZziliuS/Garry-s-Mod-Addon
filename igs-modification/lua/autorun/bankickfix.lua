concommand.Remove( "banid2" )
concommand.Remove( "kickid2" )

hook.Add("PhysgunPickup", "DisableEqUsergroupPickup", function(ply, ent)
	if ent:IsPlayer() and ent:GetUserGroup() == ply:GetUserGroup() then
		return false
	end
end)