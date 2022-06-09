	-- local groups = {
	--     ["user"] = 1,
	--     ["vip"] = 1,
	--     ["deluxe"] = 1,
	--     ["helper"] = 1,
	--     ["moder"] = 1,
	--     ["admin"] = 1,
	--     ["curator"] = 1,
	--     ["superadmin"] = 2,
	-- }

-- local function igs_salary_pgl()
--     if engine.ActiveGamemode() != "darkrp" then
--         MsgC( Color( 255, 0, 0 ), "[IGS] ERROR - ", Color( 255, 255, 255 ), "gamemode not a darkrp\n" )
--         error("[IGS] gamemode not a darkrp", 2)
--         return true
--     end
--     hook.Remove("playerGetSalary", "AFKGetSalary")
--     hook.Add("playerGetSalary", "igs_salary", function(ply, amount)
--         if ply:getDarkRPVar("AFK") then
--             return true, "", 0
--         else
--             local salary = RPExtraTeams[ply:Team()].salary*groups[ply:GetUserGroup()]
--             salary = salary+(ply:HasPurchase("added_salary") and salary*(ply:HasPurchase("added_salary")/10) or 0)
--             return false, false, salary
--         end
--     end)
-- end
-- hook.Add( "PostGamemodeLoaded", "igs_salary", igs_salary_pgl )







-- hook.Add("playerGetSalary", "igs_salary", function(ply, salary)
--     if not ply:getDarkRPVar("AFK") and ply:HasPurchase("added_salary") then
--         return false, false, salary * (1 + ply:HasPurchase("added_salary") * 0.1)
--     end
-- end)

-- local groups = { -- множитель зарплаты для привелегий
--     vip = 1.10,
--     premium = 1.2,
--     helper = 1.2,
--     moder = 1.2,
--     curator = 1.2,
--     admin = 1.2,
--     superadmin = 2,
--     user = 1
-- }

-- local changed = false
-- hook.Add("playerGetSalary", "igs_salary", function(ply, salary)
--     if ply:getDarkRPVar("AFK") then return end
--     changed = false

--     if groups[ply:GetUserGroup()] then
--         salary = salary * groups[ply:GetUserGroup()]
--         changed = true
--     end
--     if ply:HasPurchase("added_salary") then
--         salary = salary * (1 + ply:HasPurchase("added_salary") * 0.1)
--         changed = true
--     end

--     if changed then
--         return false, false, salary
--     end
-- end)