if SERVER then
	include('server/sv_names.lua')
	AddCSLuaFile('client/cl_names.lua')
end

if CLIENT then
	include('client/cl_names.lua')
end
