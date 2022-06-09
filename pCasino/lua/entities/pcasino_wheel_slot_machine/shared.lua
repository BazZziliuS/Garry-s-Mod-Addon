ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Wheel Slot Machine"
ENT.Author = "Owain Owjo & The One Free-Man"
ENT.Category = "pCasino"
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "CurrentJackpot")
end

PerfectCasino.Core.RegisterEntity("pcasino_wheel_slot_machine", {
	-- General data
	general = {
		limitUse = {d = false, t = "bool"}
	},
	-- Bet data
	bet = {
		default = {d = 1000, t = "num"}, -- The default bet
	},
	-- Combo data
	combo = {
		{c = {"gold", "gold", "gold"}, p = 0.8, j = false},
		{c = {"coins", "coins", "coins"}, p = 1, j = false},
		{c = {"emerald", "emerald", "emerald"}, p = 1.2, j = false},
		{c = {"bag", "bag", "bag"}, p = 1.6, j = false},
		{c = {"bar", "bar", "bar"}, p = 2, j = false},
		{c = {"coin", "coin", "coin"}, p = 2.5, j = false},
		{c = {"coin", "coin", "anything"}, p = 2, j = false},
		{c = {"anything", "coin", "coin"}, p = 2, j = false},
		{c = {"vault", "vault", "vault"}, p = 2.8, j = false},
		{c = {"chest", "anything", "anything"}, p = 4, j = false},
		{c = {"anything", "chest", "anything"}, p = 4, j = false},
		{c = {"anything", "anything", "chest"}, p = 4, j = false},
		{c = {"chest", "chest", "chest"}, p = 0, j = true},
	},
	-- Combo data
	wheel = {
		{n = "20 тугриков", f = "igs_fund", i = 20, p = "diamond"},
		{n = "₽10,000", f = "money", i = 10000, p = "dolla"},
		{n = "₽100,000", f = "money", i = 100000, p = "dolla"},
		{n = "₽500,000", f = "money", i = 500000, p = "dolla"},
		{n = "Джекпот!", f = "jackpot", i = 1000000, p = "diamond"},
		{n = "5 тугриков", f = "igs_fund", i = 5, p = "diamond"},
		{n = "Бесплатный Спин", f = "prize_wheel", i = 0, p = "mystery_2"},
		{n = "1 тугрик", f = "igs_fund", i = 1, p = "dolla"},
		{n = "₽10,000", f = "money", i = 10000, p = "dolla"},
		{n = "₽100,000", f = "money", i = 100000, p = "dolla"},
		{n = "10 тугриков", f = "igs_fund", i = 10, p = "diamond"},
		{n = "Джекпот!", f = "jackpot", i = 100000, p = "diamond"}
	},
	-- Jackpot data
	jackpot = {
		toggle = {d = true, t = "bool"}, -- The bell chance
		startValue = {d = 10000, t = "num"}, -- The bell chance
		betAdd = {d = 0.5, t = "num"}, -- The % of the bet to add to the jackpot
	},
	-- Chance data
	chance = {
		gold = {d = 15},
		coins = {d = 10},
		emerald = {d = 9},
		bag = {d = 8},
		bar = {d = 6},
		coin = {d = 6},
		vault = {d = 4},
		chest = {d = 1},
	},
},
"models/freeman/owain_slotmachine_wheel.mdl")