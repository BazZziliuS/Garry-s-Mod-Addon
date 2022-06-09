
BATTLEPASS = {}
BATTLEPASS.Database = {}
BATTLEPASS.Challenges = {}
BATTLEPASS.ChallengeCategories = {}
BATTLEPASS.Rewards = {}
BATTLEPASS.ActiveChallenges = {}

local function IncludeClient(str)
	if SERVER then
		AddCSLuaFile("battlepass/" .. str .. ".lua")
	elseif CLIENT then
		include("battlepass/" .. str .. ".lua")
	end
end

local function IncludeServer(str)
	if SERVER then
		include("battlepass/" .. str .. ".lua")
	end
end

local function IncludeShared(str)
	IncludeClient(str)
	IncludeServer(str)
end

local function Load()
	BATTLEPASS.FinishedLoading = nil

	IncludeShared("shared/helper")

	IncludeShared("shared/challenges")
	for i, v in pairs(file.Find("battlepass/challenges/*.lua", "LUA")) do
		IncludeShared("challenges/" .. v:sub(1, v:len() - 4))
	end
	IncludeShared("shared/language")
	for i, v in pairs(file.Find("battlepass/languages/*.lua", "LUA")) do
		IncludeShared("languages/" .. v:sub(1, v:len() - 4))
	end
	IncludeShared("shared/rewards")
	for i, v in pairs(file.Find("battlepass/rewards/*.lua", "LUA")) do
		IncludeShared("rewards/" .. v:sub(1, v:len() - 4))
	end

	IncludeShared("shared/bp_builder")
	IncludeShared("configuration/config")
	IncludeServer("configuration/mysql")

	-- Include Database elements
	IncludeServer("database/sql")
	IncludeServer("database/mysqlite")

	-- Include UI elements
	IncludeClient("ui/button")
	IncludeClient("ui/tooltip")

	-- Include script UI
	IncludeClient("menu/frame")
	IncludeClient("menu/navbar")
	IncludeClient("menu/battlepass")
	IncludeClient("menu/challenges")
	IncludeClient("menu/help")

	-- Include shared elements

	-- Include networking
	IncludeClient("network/client")
	IncludeServer("network/server")

	-- Include essentials
	IncludeServer("server/player")
	IncludeShared("server/perm_vars")
	IncludeShared("server/perm_weps")

	BATTLEPASS.FinishedLoading = true

	hook.Run("BATTLEPASS.FinishedLoading")
	
	if (SERVER) then
		hook.Add("Think", "BATTLEPASS.InitializeMySQL", function()
			timer.Simple(0, function()
				XBPMySQLite.initialize(BATTLEPASS.Config.MySQL)
			end)

			hook.Remove("Think", "BATTLEPASS.InitializeMySQL")
		end)
	end
end

if (XeninUI) then
	Load()
else
	hook.Add("XeninUI.Loaded", "BattlePass", Load)
end

if (SERVER) then
	resource.AddFile("resource/fonts/Montserrat-Bold.ttf")
	resource.AddFile("resource/fonts/Montserrat-Regular.ttf")
	resource.AddFile("resource/fonts/montserrat-medium.ttf")
	resource.AddFile("materials/battlepass/donate.png")
	resource.AddFile("materials/battlepass/ruble.png")
	resource.AddFile("materials/battlepass/refresh.png")

	-- XeninUI
resource.AddWorkshop("1900562881")
	-- Battle Pass resources
resource.AddWorkshop("1913077486")

end
