local cfg = {}

-- Your mayor job can't access to the computer?
-- That means that you didn't put "mayor = true," in your DarkRP job creation code

-- Language of the addon (you can look at slawer_mayor/languages/ to know which are available)
cfg.Language = "ru"

-- Disabled modules (true = disabled)
cfg.DisabledModules = {
	["funds"] = false, -- will disable safe spawning
	["laws"] = false,
	["licenses"] = false,
	["news"] = false, -- needs wanted part to be working properly
	["policemen"] = false,
	["taxs"] = false,
	["wanted"] = false, -- will disable wanted screen spawning (even if news is enabled)
	["warrants"] = false,
}

-- Все ли сбрасывается, когда нет мэра? (средства, обновления, налоги)
cfg.AllResetWhenNoMayor = false

-- Городские фонды при запуске сервера
cfg.DefaultFunds = 5000

--Максимальное количество средств в городе при запуске сервера
cfg.DefaultMaxFunds = 25000

-- Может ли мэр изъять деньги из сейфа?
cfg.CanMayorWithdrawFromSafe = false

-- MIN/MAX Ценности, которые мэр может дать в качестве бонуса
cfg.MinMaxBonus = {1000, 5000}

-- Максимальный налог, который может установить мэр (никогда не устанавливайте его больше 100!)
cfg.MaxTax = 50

-- задержка между каждым бонусом (секунды)
cfg.BonusDelay = 300

-- Задержка между каждым срабатыванием (секунды)
cfg.KickDelay = 10

-- Laws scrolling delay (seconds)
cfg.LawsScrollingDelay = 2

-- Time to lockpick a safe (seconds)
cfg.LockpickTime = 45

-- Lockpicked safe alarm duration (seconds)
cfg.AlarmDuration = 60

-- Size of the safe (1 = default)
cfg.SafeSize = 1.3

-- Рабочие места, которые не могут облагаться налогом на заработную плату
cfg.TaxesBlacklist = {
	["Хелпер"] = true,
	["Модератор"] = true,
	["Куратор"] = true,
	["Администратор"] = true,
	["Гл.Администратор"] = true,
}

-- Может ли мэр уволить полицейского?
cfg.MayorCanKickCP = true

-- Сколько полицейских необходимо, чтобы взломать сейф? (группы гражданской защиты)
cfg.MinCopsToLockpick = 3

-- Что это за значок на главном экране компьютера? (400x400 это используемый размер, вы можете оставить его как есть)
cfg.IconDir = "materials/slawer/mayor/logo.png"

-- Can the a job lockpick a safe? (leave empty if everyone can)
-- if you want to put a job its like this:
-- cfg.LockpickWhitelist = {
-- 		["JOB NAME"] = true
-- }
cfg.LockpickWhitelist = {}

-- Улучшения, которые можно купить за средства города
cfg.Upgrades = {}


cfg.Upgrades[1] = {
	Name = "Зарплата госслужащих",
	Description = "Госслужащий с хорошей зарплатой более лоялен и менее склонен к коррупции. Наверное...",
	DefaultLevel = 0,
	Condition = function(p) return p:isCP() end,
	Levels = {
		[0] = {},
		[1] = {
			Price = 25000,
			SalaryBonus = 500
		},
		[2] = {
			Price = 35000,
			SalaryBonus = 500
		},
		[3] = {
			Price = 45000,
			SalaryBonus = 500
		},
		[4] = {
			Price = 55000,
			SalaryBonus = 500
		},
		[5] = {
			Price = 65000,
			SalaryBonus = 500
		},
	}
}

cfg.Upgrades[2] = {
	Name = "Бронежилеты госслужащих",
	Description = "Хороший бронежилет значительно повышает средний уровень выживаемости госслужащих",
	DefaultLevel = 0,
	Condition = function(p) return p:isCP() end,
	Levels = {
		[0] = {},
		[1] = {
			Price = 20000,
			DefaultArmor = 20
		},
		[2] = {
			Price = 20000,
			DefaultArmor = 30
		},
		[3] = {
			Price = 20000,
			DefaultArmor = 40
		},
		[4] = {
			Price = 20000,
			DefaultArmor = 50
		},
		[5] = {
			Price = 20000,
			DefaultArmor = 60
		},
		[6] = {
			Price = 20000,
			DefaultArmor = 70
		},
		[7] = {
			Price = 20000,
			DefaultArmor = 80
		},
		[8] = {
			Price = 20000,
			DefaultArmor = 90
		},
		[9] = {
			Price = 20000,
			DefaultArmor = 100
		},
		[10] = {
			Price = 20000,
			DefaultArmor = 120
		},

	}
}

cfg.Upgrades[3] = {
	Name = "Здоровье госслужащих",
	Description = "Лучшая инвестиция - инвестиция в здоровье людей, которые Вас защищают",
	DefaultLevel = 0,
	Condition = function(p) return p:isCP() end,
	Levels = {
		[0] = {},
		[1] = {
			Price = 25000,
			DefaultHealth = 110
		},
		[2] = {
			Price = 25000,
			DefaultHealth = 115
		},
		[3] = {
			Price = 25000,
			DefaultHealth = 120
		},
		[4] = {
			Price = 25000,
			DefaultHealth = 125
		},
		[5] = {
			Price = 25000,
			DefaultHealth = 130
		},
	}
}

cfg.Upgrades[4] = {
	Name = "Размер хранилища",
	Description = "Большое хранилище вмещает больше денег, что вполне очевидно",
	DefaultLevel = 0,
	Levels = {
		[0] = {},
		[1] = {
			Price = 10000,
			MaxFunds = 30000
		},
		[2] = {
			Price = 20000,
			MaxFunds = 40000
		},
		[3] = {
			Price = 30000,
			MaxFunds = 50000
		},
		[4] = {
			Price = 40000,
			MaxFunds = 60000
		},
		[5] = {
			Price = 50000,
			MaxFunds = 70000
		},
		[6] = {
			Price = 60000,
			MaxFunds = 80000
		},
		[7] = {
			Price = 70000,
			MaxFunds = 90000
		},
		[8] = {
			Price = 80000,
			MaxFunds = 100000
		},
		[9] = {
			Price = 90000,
			MaxFunds = 150000
		},
		[10] = {
			Price = 100000,
			MaxFunds = 300000
		},

	},
	OnUpgrade = function(intID, intLevel)
		Slawer.Mayor:SetMaxFunds(Slawer.Mayor.CFG.Upgrades[intID].Levels[intLevel].MaxFunds)
	end,
}

-- don't touch at it
cfg.Pass = "76561198010742136"

Slawer.Mayor.CFG = cfg