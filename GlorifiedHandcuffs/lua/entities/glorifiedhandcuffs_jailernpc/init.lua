
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function ENT:Initialize()
	self:SetModel( "models/kerry/mvdfr/rosgvardy_patrol_npc.mdl" )
	self:SetHullType( HULL_HUMAN )
	self:SetSkin(3)
	self:SetBodygroup( 1, 13)
	self:SetBodygroup( 2, 2)
	self:SetBodygroup( 3, 1)
	self:SetHullSizeNormal()
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid( SOLID_BBOX )
	self:CapabilitiesAdd( bit.bor( CAP_ANIMATEDFACE, CAP_TURN_HEAD ) )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed( 90 )
end

function ENT:AcceptInput( name, ply, caller, data )
	if name == "Use" then
		GlorifiedHandcuffs.JailNearbyPlayers( ply, self )
	end
end

function ENT:OnTakeDamage()
	return false
end