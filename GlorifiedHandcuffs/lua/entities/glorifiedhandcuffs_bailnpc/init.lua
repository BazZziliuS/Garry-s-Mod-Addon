
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function ENT:Initialize()
	self:SetModel( "models/kerry/mvdfr/mvd_patrol_npc.mdl" )
	self:SetSkin(6)
	self:SetBodygroup( 1, 13)
	self:SetBodygroup( 7, 1)
	self:SetBodygroup( 5, 1)
	self:SetBodygroup( 2, 6)
	self:SetBodygroup( 8, 1)
	self:SetHullType( HULL_HUMAN )
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
		GlorifiedHandcuffs.OpenBailMenu( ply )
	end
end

function ENT:OnTakeDamage()
	return false
end