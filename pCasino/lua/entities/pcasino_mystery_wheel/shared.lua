ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Mysterly Wheel"
ENT.Author = "Owain Owjo & The One Free-Man"
ENT.Category = "pCasino"
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.Spawnable = false
ENT.AdminSpawnable = false

PerfectCasino.Core.RegisterEntity("pcasino_mystery_wheel", {
	general = {
		useFreeSpins = {d = true, t = "bool"} -- Можете ли вы использовать бесплатные вращения на этом автомате
	},
	buySpin = {
		buy = {d = false, t = "bool"}, -- Cи вы покупаете спин на этом автомате
		cost = {d = 200000, t = "int"}, 
	},
	-- Combo data
	wheel = { -- Я знаю, 20 слотов :O
		{n = "₽1", f = "money", i = 1, p = "dolla"},
		{n = "Ничего", f = "nothing", i = "nil", p = "melon"},
		{n = "₽250,000", f = "money", i = 250000, p = "dolla"},
		{n = "VIP на 1 день", f = "igs_item", i = "vip_odin_day", p = "diamond"},
		{n = "₽150,000", f = "money", i = 150000, p = "dolla"},
		{n = "₽500,000", f = "money", i = 500000, p = "dolla"},
		{n = "₽10,000", f = "money", i = 10000, p = "coins"},
		{n = "₽25,000", f = "money", i = 25000, p = "dolla"},
		{n = "Смерть", f = "kill", i = "nil", p = "bell"},
		{n = "₽50,000", f = "money", i = 50000, p = "dolla"},
		{n = "₽75,000", f = "money", i = 75000, p = "berry"},
		{n = "1 тугрик", f = "igs_fund", i = 1, p = "diamond"},
		{n = "₽5,000", f = "money", i = 5000, p = "chest"},
		{n = "Ничего", f = "nothing", i = "nil", p = "melon"},
		{n = "₽30,000", f = "money", i = 30000, p = "berry"},
		{n = "₽100,000", f = "money", i = 100000, p = "dolla"},
		{n = "10 тугриков", f = "igs_fund", i = 10, p = "diamond"},
		{n = "₽1,000", f = "money", i = 1000, p = "coins"},
		{n = "₽7,500", f = "money", i = 7500, p = "clover"},
		{n = "5 тугриков", f = "igs_fund", i = 5, p = "diamond"},
	}
},
"models/freeman/owain_mystery_wheel.mdl")