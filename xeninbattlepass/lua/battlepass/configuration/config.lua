BATTLEPASS.Pass = {}
BATTLEPASS.Config = BATTLEPASS.Config or {}

-- URL-адрес, на который вас перенаправляет приглашение, если вы пытаетесь приобрести Боевой пропуск
BATTLEPASS.Config.PurchasePassURL = "https://gm-donate.net/donate/12674"
-- URL-адрес, на который вас перенаправляет приглашение, если вы пытаетесь приобрести уровни
BATTLEPASS.Config.PurchaseTiersURL = "https://gm-donate.net/donate/12674"

-- В верхнем левом углу меню
BATTLEPASS.Config.FrameTitle = "ПрекрасноеРП - BATTLEPASS"

-- Текст префикса чата
BATTLEPASS.Config.ChatPrefixText = "[БП] "
-- Цвет префикса чата
-- Вы можете использовать Color(r, g, b)
BATTLEPASS.Config.ChatPrefixColor = XeninUI.Theme.Green

BATTLEPASS.Config.NPC = {
	-- Какой текст должен уметь NPC?
	Title = "Боевой пропуск",
	-- Цвет NPC?
	-- Example: Color(255, 0, 0)
	OutlineColor = Color(34, 38, 42)
}

-- Как должны быть отформатированы деньги? Используется для нескольких задач.
BATTLEPASS.Config.FormatMoney = function(amt)
	if (DarkRP) then
		return DarkRP.formatMoney(amt)
	elseif (PS) then
		return string.Comma(amt) .. " поинтов"
	else
		return "Неизвестное форматирование денег" .. amt
	end
end

-- Должно ли меню Battle Pass открываться всякий раз, когда игрок присоединяется?
BATTLEPASS.Config.OpenMenuOnJoin = false

-- Если вы не установили цвет награды, какого цвета должен быть фон?
BATTLEPASS.DefaultItemColor = Color(100, 100, 100)

-- На каком языке? По умолчанию только на английском языке, пока не будут добавлены дополнительные
BATTLEPASS:SetLanguage("English")

-- Запустите процесс настройки боевого пропуска
local BP = BATTLEPASS:CreateBuilderPass()
	--Идентификатор в базе данных для пропуска! Для каждого уникального пропуска, который вы создаете, убедитесь, что он уникален!
	:ID("bp_1")
	-- Название боевого пропуска
	:Name("Syndicate")
	-- Название под названием
	:Subtitle("Успей получить награды!")
	--Сколько уровней должен иметь боевой пропуск?
	:Tiers(50)
	-- Для запуска вознаграждений мы используем :Rewards()
	:Rewards()
		:Tier(1)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(2)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "level", Reward = 1, Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(3)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "weapon", Reward = "arccw_go_p90", Color = XeninUI.Theme.Green })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(4)
			:Free({ Type = "weapon", Reward = "lockpick", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "money", Reward = 15000, Color = XeninUI.Theme.Purple })
		:Tier(5)
			:Free({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
		:Tier(6)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 15000, Color = XeninUI.Theme.Purple })
			:Paid({ Type = "weapon", Reward = "arccw_go_scar", Color = XeninUI.Theme.Green })
		:Tier(7)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "level", Reward = 1, Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "money", Reward = 15000, Color = XeninUI.Theme.Yellow })
		:Tier(8)
			:Free({ Type = "weapon", Reward = "pro_keypadcracker", Color = XeninUI.Theme.Green })
			:Paid({ Type = "money", Reward = 25000, Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Yellow })
		:Tier(9)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(10)
			:Free({ Type = "weapon", Reward = "arccw_go_melee_knife", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(11)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(12)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(13)
			:Free({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(14)
			:Free({ Type = "igsitem", Reward = "vip_odin_day", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "antihm", Color = XeninUI.Theme.Yellow })
		:Tier(15)
			:Free({ Type = "weapon", Reward = "zbl_spray", Color = XeninUI.Theme.Green })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(16)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Yellow })
		:Tier(17)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "mob", Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(18)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(19)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(20)
			:Free({ Type = "weapon", Reward = "betterbanking_atmhack", Color = XeninUI.Theme.Green })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
		:Tier(21)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(22)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(23)
			:Free({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(24)
			:Free({ Type = "weapon", Reward = "base_keypadcracker", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Yellow })
		:Tier(25)
			:Free({ Type = "weapon", Reward = "arccw_go_mp5", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "igsitem", Reward = "licenses", Color = XeninUI.Theme.Yellow })
		:Tier(26)
			:Free({ Type = "igsitem", Reward = "licensesbonus", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(27)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(28)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(29)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(30)
			:Free({ Type = "weapon", Reward = "arccw_go_m4", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(31)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(32)
			:Free({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Yellow })
		:Tier(33)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "kgb", Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(34)
			:Free({ Type = "money", Reward = 10000 })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(35)
			:Free({ Type = "weapon", Reward = "arccw_go_bizon", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "igsitem", Reward = "medmask", Color = XeninUI.Theme.Yellow })
		:Tier(36)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(37)
			:Free({ Type = "weapon", Reward = "lockpick", Amount = 5, Color = XeninUI.Theme.Green })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(38)
			:Free({ Type = "igsitem", Reward = "medmaskbonus", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(39)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(40)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple})
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Yellow})
		:Tier(41)
			:Free({ Type = "money", Reward = 15000 })
			:Paid({ Type = "money", Reward = 15000, Color = XeninUI.Theme.Purple })
		:Tier(42)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(43)
			:Free({ Type = "weapon", Reward = "oneprint", Tooltip = "Манник", Display = "models/ogl/ogl_oneprint.mdl", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(44)
			:Free({ Type = "money", Reward = 15000 })
			:Paid({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igstug", Reward = 10, Color = XeninUI.Theme.Purple })
		:Tier(45)
			:Free({ Type = "money", Reward = 5000 })
			:Paid({ Type = "igstug", Reward = 19, Color = XeninUI.Theme.Purple })
		:Tier(46)
			:Free({ Type = "igsitem", Reward = "casino", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "murder", Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "money", Reward = 10000, Color = XeninUI.Theme.Green  })
		:Tier(47)
			:Free({ Type = "igsitem", Reward = "fas2_ifak", Color = XeninUI.Theme.Purple })
			:Paid({ Type = "igsitem", Reward = "govorilka", Color = XeninUI.Theme.Purple })
		:Tier(48)
			:Free({ Type = "igsitem", Reward = "vip_odin_mesac", Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "igsitem", Reward = "deluxe_odin_mesac", Color = XeninUI.Theme.Yellow })
			:Paid({ Type = "money", Reward = 500000, Color = XeninUI.Theme.Yellow })
		:Tier(49)
			:Free({ Type = "removebp", Reward = "nil"})
		:Tier(50)
			:Free({ Type = "removebp", Reward = "nil"})




	:Challenges()
		-- Давайте создадим категорию задач
		:Category("Игровой процесс")
			:Challenge("playtime")	
				:Stage({ Progress = 180, Reward = 3 })
				:Stage({ Progress = 300, Reward = 5 })
				:Stage({ Progress = 600, Reward = 7 })
				:Stage({ Progress = 1200, Reward = 14 })
				:Stage({ Progress = 1500, Reward = 14 })
				:Stage({ Progress = 1800, Reward = 14 })
				:Stage({ Progress = 2100, Reward = 14 })
			:Challenge("falldamage")
				:Stage({ Progress = 250, Reward = 2 })
				:Stage({ Progress = 500, Reward = 4 })
				:Stage({ Progress = 750, Reward = 6 })
				:Stage({ Progress = 1000, Reward = 8 })
			:Challenge("distance")
				:Stage({ Progress = 1000, Reward = 2 })
				:Stage({ Progress = 5000, Reward = 3 })
				:Stage({ Progress = 15000, Reward = 3 })
				:Stage({ Progress = 50000, Reward = 4 })
				:Stage({ Progress = 100000, Reward = 5 })
				:Stage({ Progress = 200000, Reward = 6 })
				:Stage({ Progress = 300000, Reward = 6 })
				:Stage({ Progress = 400000, Reward = 6 })
				:Stage({ Progress = 500000, Reward = 6 })
				:Stage({ Progress = 600000, Reward = 6 })
				:Stage({ Progress = 700000, Reward = 6 })
			:Challenge("props")
				:Stage({ Progress = 60, Reward = 3 })
				:Stage({ Progress = 250, Reward = 3 })
				:Stage({ Progress = 500, Reward = 3 })
				:Stage({ Progress = 1000, Reward = 3 })
				:Stage({ Progress = 2000, Reward = 3 })
				:Stage({ Progress = 4000, Reward = 3 })
				:Stage({ Progress = 8000, Reward = 3 })
				:Stage({ Progress = 12000, Reward = 3 })
				:Stage({ Progress = 16000, Reward = 3 })
				:Stage({ Progress = 20000, Reward = 3 })
			:Challenge("murder")
				:Stage({ Progress = 10, Reward = 2 })
				:Stage({ Progress = 30, Reward = 3 })
				:Stage({ Progress = 100, Reward = 4 })
				:Stage({ Progress = 250, Reward = 4 })
				:Stage({ Progress = 500, Reward = 5 })
			:Challenge("death")
				:Stage({ Progress = 10, Reward = 2 })
				:Stage({ Progress = 25, Reward = 3 })
				:Stage({ Progress = 100, Reward = 4 })
				:Stage({ Progress = 250, Reward = 4 })
				:Stage({ Progress = 500, Reward = 4 })
		-- New category! We can make more challenges in here
		:Category("DarkRP")
			:Challenge("buy_entities")
				:Stage({ Progress = 25, Reward = 2 })
				:Stage({ Progress = 50, Reward = 2 })
				:Stage({ Progress = 100, Reward = 3 })
				:Stage({ Progress = 175, Reward = 3 })
				:Stage({ Progress = 350, Reward = 4 })
			:Challenge("buy_shipments")
				:Stage({ Progress = 5, Reward = 2 })
				:Stage({ Progress = 15, Reward = 2 })
				:Stage({ Progress = 30, Reward = 3 })
				:Stage({ Progress = 60, Reward = 3 })
				:Stage({ Progress = 150, Reward = 4 })
			:Challenge("buy_weapons")
				:Stage({ Progress = 5, Reward = 2 })
				:Stage({ Progress = 15, Reward = 2 })
				:Stage({ Progress = 30, Reward = 3 })
				:Stage({ Progress = 60, Reward = 3 })
				:Stage({ Progress = 150, Reward = 4 })
			:Challenge("doors_bought")
				:Stage({ Progress = 10, Reward = 2 })
				:Stage({ Progress = 25, Reward = 3 })
				:Stage({ Progress = 50, Reward = 3 })
				:Stage({ Progress = 100, Reward = 4 })
				:Stage({ Progress = 250, Reward = 5 })
			:Challenge("lockpicked")
				:Stage({ Progress = 5, Reward = 2 })
				:Stage({ Progress = 15, Reward = 3 })
				:Stage({ Progress = 35, Reward = 3 })
				:Stage({ Progress = 75, Reward = 4 })
				:Stage({ Progress = 125, Reward = 5 })
				:Stage({ Progress = 250, Reward = 5 })
				:Stage({ Progress = 500, Reward = 6 })
				:Stage({ Progress = 750, Reward = 7 })
			:Challenge("change_job")
				:Stage({ Progress = 10, Reward = 2 })
				:Stage({ Progress = 20, Reward = 2 })
				:Stage({ Progress = 50, Reward = 4 })
				:Stage({ Progress = 100, Reward = 6 })
				:Stage({ Progress = 200, Reward = 8 })
				:Stage({ Progress = 300, Reward = 10 })

-- Когда вы закончите, убедитесь, что в конце есть :Construct(). Это заставит конфигурацию работать!
:Construct()

BATTLEPASS.Config.ChatCommands = {
	["!батлпасс"] = true,
	["!бп"] = true,
	["!пасс"] = true,
	["!батл"] = true,
	["/батлпасс"] = true,
	["/бп"] = true,
	["/пасс"] = true,
	["/батл"] = true,
	["!battlepass"] = true,
	["/battlepass"] = true,
	["!bp"] = true,
	["/bp"] = true,
	["/pass"] = true,
	["!pass"] = true
}

-- The Help tab
BATTLEPASS.Config.HelpPage = {
	{
		Title = "Что это?",
		Content = {
			"Это BATTLEPASS/Боевой пропуск который существует во многих других современных играх",
			"Выполняйте задания во вкладке 'задания', чтобы заработать звезды, как только у вас будет 10 звезд, вы повысите свой уровень"
		}
	},
	{ 
		Title = "Какие награды доступны?",
		Content = {
			"На главной странице BATTLEPASS вы можете увидеть, какие награды вы получаете на каждом уровне",
			{ "Синий ряд это ряд с менее ценными наградами, каждый может разблокировать их, подняв уровень", Color(41, 128, 185) },
			{ "Золотой ряд это ряд с более ценными наградами, если вы купите BATTLEPASS за 299 тугриков, то сможете разблокировать предметы в этом ряду", Color(230, 176, 65, 160) },
			"Покупая BATTLEPASS вы получаете доступ к обоим рядам наград (Очень выгодно)"
		}
	},
	{
		Title = "Как разблокировать золотой ряд?",
		Content = {
			"Пропишите в чат /donate и перейдите в категорию BATTLEPASS после чего нажмите на услугу BATTLEPASS"
		}
	},
	{
		Title = "Можно ли мне прокачаться побыстрее?",
		Content = {
			{"Да, вы можете приобрести уровни боевого пропуска на главной странице. 1 уровень - 49 тугриков"}
		}
	}
}
