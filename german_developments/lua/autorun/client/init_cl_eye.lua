
local eyepos = Vector()
local eyeangles = Angle()
local eyefov = 90

hook.Add("RenderScene", "Eye", function(origin, angles, fov)
	eyepos = origin
	eyeangles = angles
	eyefov = fov
end)

function EyePos() return eyepos end
function EyeAngles() return eyeangles end
function EyeFov() return eyefov end