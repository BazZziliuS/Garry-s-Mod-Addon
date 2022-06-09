
/***************************************
	                  Сезонное
****************************************/

IGS("Премиум BATTLEPASS", "battlepass")
    :SetPrice(299)
    :SetIcon("https://i.imgur.com/wZBxakp.png")
    :SetOnActivate(function (ply) RunConsoleCommand('battlepass_give_pass', ply:SteamID64()) end)
    :SetDescription("Получай крутые награды в новой системе BATTLEPASS!")
    :SetCategory("BATTLEPASS")
    :SetHighlightColor(Color(255, 212, 51))

IGS("+1 Уровень BATTLEPASS", "tiersbattlepass1")
    :SetPrice(49)
    :SetIcon("https://i.imgur.com/0gplfxD.png")
	:SetStackable(true)
    :SetOnActivate(function (ply) RunConsoleCommand('battlepass_give_tier', ply:SteamID64(), '1') end)
    :SetDescription("Получай крутые награды в новой системе BATTLEPASS!")
    :SetCategory("BATTLEPASS")
    :SetHighlightColor(Color(255, 212, 51))

IGS("+3 Уровня BATTLEPASS", "tiersbattlepass2")
    :SetPrice(129)
    :SetIcon("https://i.imgur.com/0gplfxD.png")
	:SetStackable(true)
    :SetOnActivate(function (ply) RunConsoleCommand('battlepass_give_tier', ply:SteamID64(), '3') end)
    :SetDescription("Получай крутые награды в новой системе BATTLEPASS!")
    :SetCategory("BATTLEPASS")
    :SetHighlightColor(Color(255, 212, 51))

/***************************************
	               Донат группы
****************************************/

IGS("VIP на 1 месяц", "vip_odin_mesac")
	:SetULXGroup("vip")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(129)
    :SetTerm(30)
    :SetIcon("https://i.imgur.com/pb39VTk.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х2
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 5 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 

IGS("VIP на 3 месяца", "vip_tri_mesac")
	:SetULXGroup("vip")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(349)
    :SetTerm(90)
    :SetIcon("https://i.imgur.com/pb39VTk.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х2
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 5 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 


IGS("VIP Навсегда", "vip_perma")
	:SetULXGroup("vip")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(1290)
    :SetPerma()
    :SetIcon("https://i.imgur.com/pb39VTk.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х2
— Бесплатная Лицензия
— Бесплатная Медицинская Маска
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 5 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 


IGS("DELUXE на 1 месяц", "deluxe_odin_mesac")
	:SetULXGroup("deluxe")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(249)
    :SetTerm(30)
    :SetIcon("https://i.imgur.com/K4HpWph.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х5
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 6 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 

IGS("DELUXE на 3 месяца", "deluxe_tri_mesac")
	:SetULXGroup("deluxe")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(699)
    :SetTerm(90)
    :SetIcon("https://i.imgur.com/K4HpWph.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х5
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 6 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 

IGS("DELUXE Навсегда", "deluxe_perma")
	:SetULXGroup("deluxe")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(2490)
    :SetPerma()
    :SetIcon("https://i.imgur.com/K4HpWph.png")
    :SetCategory("Донат привелегии")
    :SetDescription([[
Бонусы:

— Прокачка дворника х5
— Бесплатная Лицензия
— Бесплатная Медицинская Маска
— Доступ к профессии Наемника
— Неголодайка
— Печатный станок на 6 слотов
— Вирусолог: 8 слотов вместо 6 в анализаторе
— Вирусолог: Анализ материалов на 20% быстрее
— Вирусолог: Шанс заразится 20%
— Доступ к большой палатке за Варщика мета
— Удвоение цены продажи мета
]]) 



/***************************************
	             Игровая валюта
****************************************/

IGS("50.000₽", "50k")
	:SetIcon("models/props/cs_assault/Money.mdl", true)
	:SetDarkRPMoney(50000)
	:SetPrice(29)
	:SetCategory("Игровые деньги")

IGS("110.000₽", "110k")
	:SetIcon("models/props/cs_assault/Money.mdl", true)
	:SetDarkRPMoney(110000)
	:SetPrice(59)
	:SetCategory("Игровые деньги")

IGS("550.000₽", "550k")
	:SetIcon("models/props/cs_assault/Money.mdl", true)
	:SetDarkRPMoney(550000)
	:SetPrice(249)
	:SetCategory("Игровые деньги")

IGS("1.250.000₽", "1250k")
	:SetIcon("models/props/cs_assault/moneypallet03.mdl", true)
	:SetDarkRPMoney(1250000)
	:SetPrice(599)
	:SetCategory("Игровые деньги")

IGS("3.700.000₽", "3700k")
	:SetIcon("models/props/cs_assault/moneypallet.mdl", true)
	:SetDarkRPMoney(3700000)
	:SetPrice(1499)
	:SetCategory("Игровые деньги")



/***************************************
	               Профессии
****************************************/

IGS("Наемник", "mob"):SetDarkRPTeams(mob)
	:SetIcon("models/player/leet.mdl", true)
	:SetDescription("Дает доступ к эксклюзивной профессии \"Наемника\"")
	:SetPrice(149)
	:SetTerm(90) 
	:SetCategory("Профессии")

IGS("Агент КГБ", "kgb"):SetDarkRPTeams(kgb)
	:SetIcon("models/player/arctic.mdl", true)
	:SetDescription("Дает доступ к эксклюзивной профессии \"Агента КГБ\"")
	:SetPrice(149)
	:SetTerm(90) 
	:SetCategory("Профессии")

IGS("Маньяк", "murder"):SetDarkRPTeams(murder)
	:SetIcon("models/player/Group01/Male_09.mdl", true)
	:SetDescription("Дает доступ к эксклюзивной профессии \"Маньяка\"")
	:SetPrice(149)
	:SetTerm(90) 
	:SetCategory("Профессии")

/***************************************
	                Предметы
****************************************/

IGS("Аптечка", "fas2_ifak")
    :SetWeapon('fas2_ifak')
	:SetIcon("models/weapons/w_ifak.mdl", true)
    :SetPrice(99)
    :SetTerm(90) 
    :SetCategory("Предметы")

IGS("Маскировочный кейс", "swep_disguise_briefcase")
    :SetWeapon('swep_disguise_briefcase')
	:SetIcon("models/props_c17/SuitCase_Passenger_Physics.mdl", true)
    :SetPrice(499)
    :SetTerm(90) 
    :SetCategory("Предметы")
	
IGS("Отмычка", "lockpickdonate")
	:SetPrice(199)
    :SetTerm(90) 
   	:SetWeapon("lockpick")
	:SetIcon("models/weapons/w_crowbar.mdl", true)
    :SetCategory("Предметы")
	
IGS("Улучшенный Взломщик", "keypad_crackerdonate")
	:SetDescription("Дает улучшенный взломщик кейпадов. Он вешается на кейпад и взламывает без необходимости смотреть на кейпад!")
	:SetPrice(299)
    :SetTerm(90)
  	:SetWeapon("pro_keypadcracker")
	:SetIcon("models/weapons/w_c4.mdl", true)
    :SetCategory("Предметы")

IGS("Взломщик банкоматов", "atmbreaker")
	:SetWeapon("betterbanking_atmhack")
	:SetPrice(99)
	:SetTerm(90)
    :SetCategory("Предметы")
	:SetIcon("models/weapons/w_crowbar.mdl", true)

IGS("Нож", "melee_knife")
	:SetWeapon("arccw_go_melee_knife")
	:SetPrice(99)
	:SetTerm(90)
    :SetCategory("Предметы")
	:SetIcon("models/weapons/arccw_go/v_knife_bayonet.mdl", true)

IGS("Дымовая шашка", "nade_smoke")
	:SetWeapon("arccw_go_nade_smoke")
	:SetPrice(90)
	:SetTerm(7)
    :SetCategory("Предметы")
	:SetDescription("Нельзя закидывать весь сервер!")
	:SetIcon("models/weapons/arccw_go/w_eq_smokegrenade_thrown.mdl", true)

IGS("Световая граната", "nade_flash")
	:SetWeapon("arccw_go_nade_flash")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Предметы")
	:SetDescription("Нельзя закидывать весь сервер!")
	:SetIcon("models/weapons/arccw_go/w_eq_flashbang_thrown.mdl", true)

IGS("Паркур", "climb")
	:SetWeapon("climb_swep2")
	:SetPrice(99)
	:SetTerm(90)
    :SetCategory("Предметы")
	:SetDescription("Теперь вы сможете паркурить!")
    :SetIcon("https://i.imgur.com/OiXGX1Q.jpeg")


/***************************************
	                Пистолеты
****************************************/

IGS("Пистолет Лебедева", "eap_lebedev")
	:SetWeapon("arccw_eap_lebedev")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw/eap/c_lebedev.mdl", true)

IGS("Пистолет TEC 9", "go_tec9")
	:SetWeapon("arccw_go_tec9")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_pist_tec9.mdl", true)

IGS("Пистолет CZ 75", "go_cz75")
	:SetWeapon("arccw_go_cz75")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_pist_cz75.mdl", true)

/***************************************
	          ПистолетПулеметы
****************************************/

IGS("ПП FMG9", "eap_fmg9")
	:SetWeapon("arccw_eap_fmg9")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw/eap/c_fmg9.mdl", true)

IGS("ПП P90", "go_p90")
	:SetWeapon("arccw_go_p90")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_smg_p90.mdl", true)

IGS("ПП BIZON", "go_bizon")
	:SetWeapon("arccw_go_bizon")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_smg_bizon.mdl", true)

/***************************************
	          Штурмовые винтовки
****************************************/

IGS("Штурмовая винтовка M4", "go_m4")
	:SetWeapon("arccw_go_m4")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_rif_m4a1.mdl", true)

IGS("Штурмовая винтовка XM29", "eap_xm29")
	:SetWeapon("arccw_eap_xm29")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw/eap/c_xm29.mdl", true)

IGS("Штурмовая винтовка AEK", "go_aek")
	:SetWeapon("arccw_eap_aek")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw/eap/c_aek971.mdl", true)

/***************************************
	          Дробовики
****************************************/

IGS("Дробовик M1014", "go_m1014")
	:SetWeapon("arccw_go_m1014")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_shot_m1014.mdl", true)

IGS("Дробовик R870", "go_870")
	:SetWeapon("arccw_go_870")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_shot_870.mdl", true)

IGS("Дробовик NOVA", "go_nova")
	:SetWeapon("arccw_go_nova")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_shot_nova.mdl", true)

/***************************************
	          Снайперские винтовки
****************************************/

IGS("Снайперская винтовка SCAR", "go_scar")
	:SetWeapon("arccw_go_scar")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_rif_scar.mdl", true)

IGS("Снайперская винтовка Scout", "go_ssg08")
	:SetWeapon("arccw_go_ssg08")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_snip_ssg08.mdl", true)

IGS("Снайперская винтовка AWP", "go_awp")
	:SetWeapon("arccw_go_awp")
	:SetPrice(99)
	:SetTerm(7)
    :SetCategory("Оружие")
	:SetIcon("models/weapons/arccw_go/v_snip_awp.mdl", true)


/***************************************
	            Фишки и приколы
****************************************/

IGS("Говорилка", "govorilka")
	:SetPrice(199) 
	:SetTerm(30) 
    :SetIcon("https://i.imgur.com/c7d0m0f.png") 
	:SetCategory("Прочее")
	:SetDescription("Озвучивает Ваше сообщение из чата")

IGS("Неголодайка", "antihm"):DisablePlayerHunger()
	:SetPrice(49)
	:SetTerm(30)
    :SetIcon("https://i.imgur.com/v67rE97.png") 
	:SetCategory("Прочее")
	:Description("Убирает голод")

IGS("+50 к лимиту пропов", "givelimit")
	:SetPrice(49)
	:SetStackable(true)
	:SetTerm(90) 
	:SetIcon("https://i.imgur.com/jPtdOPG.png") 
	:SetDescription(" Увелечение лимита пропов")
	:SetCategory("Прочее")

IGS("Радужный Physgun", "rainbowphysgun")
	:SetIcon("models/weapons/w_physics.mdl", true)
	:SetPrice(49)
	:SetTerm(30) 
	:SetDescription("Делает Радужный физган")
	:SetCategory("Прочее")

IGS("Побег из jail", "unjail")
	:SetPrice(49)
	:SetCategory("Прочее")
	:SetStackable(true)
	:SetIcon("https://i.imgur.com/sCCbpCs.png") 
	:SetDescription("Админ наказал вас и поставил в угол?\nС помощью этой услуги вы можете сбежать из jail.\nТеперь правила сервера не являются помехой для вас :D\nЕсли вы конечно же богатый.")
	:SetOnActivate(function(ply)
	    RunConsoleCommand("ulx", "unjail", ply:Nick())
	    RunConsoleCommand("say", ply:Nick(), "использовал Побег из jail")
	end)

IGS("999 патронов", "ammos")
	:SetPrice(199)
	:SetDescription("При каждом спавне выдает вам патроны\n\nЕсли патроны не выдались то просто купите 1 коробку")
	:SetTerm(30) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/9wwYYcD.png") 

IGS("Спин в казино", "casino")
	:SetPrice(29)
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/pjAhDLh.png") 
	:SetStackable(true)
	:SetDescription("Вы получите спин в казино")
	:SetOnActivate(function(ply)
		PerfectCasino.Core.GiveFreeSpin(ply)
	end)

IGS("Лицензия", "licenses")
	:SetPrice(79)
	:SetDescription("При смене работы выдает вам лицензию!")
	:SetTerm(30) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/YSKnsOp.png") 

IGS("Медицинская Маска", "medmask")
	:SetPrice(79)
	:SetDescription("При смене работы одевает вам медицинскую маску от вирусов!")
	:SetTerm(30) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/tdWBKdV.png") 


/***************************************
	        Скрытое для подарков
****************************************/
IGS("VIP на 1 день", "vip_odin_day")
	:SetULXGroup("vip")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(999)
    :SetTerm(1)
    :SetIcon("https://i.imgur.com/pb39VTk.png")
    :SetHidden()

IGS("VIP на 3 дня", "vip_tri_day")
	:SetULXGroup("vip")
	:DisablePlayerHunger()
	:SetDarkRPTeams(mob)
    :SetPrice(999)
    :SetTerm(3)
    :SetIcon("https://i.imgur.com/pb39VTk.png")
    :SetHidden()

IGS("999 патронов на 3 дня", "ammosbonus")
	:SetPrice(999)
	:SetTerm(3) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/9wwYYcD.png") 
    :SetHidden()

IGS("Лицензия на 3 дня", "licensesbonus")
	:SetPrice(999)
	:SetTerm(3) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/YSKnsOp.png") 
    :SetHidden()

IGS("Медицинская Маска на 3 дня", "medmaskbonus")
	:SetPrice(999)
	:SetTerm(3) 
	:SetCategory("Прочее")
	:SetIcon("https://i.imgur.com/tdWBKdV.png") 
	:SetHidden()














-- IGS("+10% к зарплате", "added_salary")
-- 	:SetPrice(99)
-- 	:SetTerm(365) 
-- 	:SetStackable()
-- 	:SetIcon("https://i.imgur.com/rE2Sj6j.png") 
-- 	:SetCategory("Прочее")
-- 	:SetDescription("Можно покупать много раз!")









--[[-------------------------------------------------------------------------
	Обязательные методы:
		:SetPrice()
		:SetDescription()

	Популярные:
		:SetTerm()            --> Срок действия в днях (по умолчанию 0, т.е. одноразовая активация)
		:SetStackable()       --> Разрешает покупать несколько одинаковых предметов
		:SetCategory()        --> Группирует предметы
		:SetIcon()            --> Картинка или модель в качестве иконки
		:SetHighlightColor()  --> Цвет заголовка
		:SetDiscountedFrom()  --> Скидка
		:SetOnActivate()      --> Свое действие при активации
		:SetHidden()          --> Скрытый предмет

	Полезное:
		gm-donate.ru/docs     -->  Подробнее о методах и все остальные
		gm-donate.ru/support  -->  Быстрая помощь и настройка от нас
		gm-donate.ru/mods     -->  Бесплатные модули
---------------------------------------------------------------------------]]

-- Ниже пример с объяснением

/************************************************************
	Разрешаем покупать отмычку а F4 только донатерам (DarkRP)
	https://img.qweqwe.ovh/1493244432112.png -- частичное объяснение
************************************************************/

-- IGS("Отмычка", "otmichka") -- второй параметр не должен(!) повторяться с другими предметами
-- 	:SetPrice(1) -- 1 рубль

-- 	-- 0 - одноразовое (Т.е. купил, выполнилось OnActivate и забыл. Полезно для валюты)
-- 	-- 30 - месяц, 7 - неделя и т.д. :SetPerma() - навсегда
-- 	:SetTerm(30)

-- 	:SetDarkRPItem("lockpick") -- реальный класс энтити
-- 	:SetDescription("Разрешает вам покупать отмычку") -- описание
-- 	:SetCategory("Оружие") -- категория

-- 	-- квадратная ИКОНКА (Не обязательно). Отобразится на главной странице. Может быть с прозрачностью
-- 	:SetIcon("http://i.imgur.com/4zfVs9s.png")

-- 	-- БАННЕР 1000х400 (Не обязательно). Отобразится в подробностях итема
-- 	:SetImage("http://i.imgur.com/RqsP5nP.png")


/************************************************************
	Доступ к энтити, оружию и машинам через спавнменю
************************************************************/
-- IGS("Арбалет с HL", "wep_arbalet"):SetWeapon("weapon_crossbow")
-- 	:SetPrice(5000)
-- 	:SetTerm(30)
-- 	:SetDescription("Разрешает спавнить Арбалет через спавн меню в любое время")
-- 	:SetIcon("models/weapons/w_crossbow.mdl", true) -- true значит, что указана моделька, а не ссылка

-- IGS("Джип с HL", "veh_jeep"):SetVehicle("Jeep")
-- 	:SetPrice(2000)
-- 	:SetTerm(30)
-- 	:SetDescription("Разрешает спавнить джип с халвы через спавн меню в любое время")



/************************************************************
	Гмод тулы
************************************************************/
-- IGS("Доступ к Веревке","verevka_na_mesyac"):SetTool("rope")
-- 	:SetPrice(50)
-- 	:SetTerm(30) -- 30 дней
-- 	:SetDescription("Для соединения двух объектов или написания матов на стенах :)")

-- IGS("Доступ к Лебёдке","lebedka_navsegda"):SetTool("winch")
-- 	:SetPrice(100)
-- 	:SetPerma()
-- 	:SetDescription("Лебёдка это веревка, способная становиться короче или длиннее")


/************************************************************
	"Паки" предметов и скрытые предметы
	В примере ниже мы создаем скрытый предмет "Аптечка", который НЕ отображается в магазине
	и видимый предмет "Набор аптечек". После активации набора игрок получит в инвентарь 5 аптечек
	Это полезно, если вы не хотите продавать по 1 аптечке или хотите делать скидку за опт
************************************************************/
-- local HEAL = IGS("Аптечка", "heal_10hp", 0)
-- 	:SetDescription("Добавляет вам 10 хп")
-- 	:SetStackable()
-- 	:SetHidden()
-- 	:SetOnActivate(function(pl) pl:SetHealth(pl:Health() + 10) end)

-- IGS("Набор аптечек", "heal_x5", 20)
-- 	:SetDescription("Вы получите в инвентарь 5 аптечек")
-- 	:SetStackable()
-- 	:SetItems({HEAL, HEAL, HEAL, HEAL, HEAL}) -- вы можете использовать и разные предметы



-- Дальше примеры, которые нужно раскомментировать, чтобы работали (убрать "--" в начале)

/************************************************************
	Игровая валюта для DarkRP
	Здесь SetTerm не обязателен, т.к. срок ни на что не влияет
	Обратите внимание, цена указана третьим параметром. Так тоже можно
************************************************************/
-- IGS("100 тысяч", "100k_deneg", 200):SetDarkRPMoney(100000)
-- IGS("500 тысяч", "500k_deneg", 450):SetDarkRPMoney(500000)



/************************************************************
	Доступ к DarkRP профессиям
************************************************************/
-- IGS("Бомж", "team_hobo")
-- 	:SetDarkRPTeams("hobo") -- одна тима (command)
-- 	:SetCategory("Доступ к работам")
-- 	:SetDescription("Вы сможете месяц работать бомжом :)")
-- 	:SetPrice(50)
-- 	:SetTerm(30)

-- IGS("Продвинутые воры", "team_thieves")
-- 	:SetDarkRPTeams("advthief", "ultrathief") -- можно несколько
-- 	:SetCategory("Доступ к работам")
-- 	:SetDescription("Вам станут доступны работы продвинутого и ультравора")
-- 	:SetPrice(200)
-- 	:SetTerm(30)



/************************************************************
	Донат группы ULX
************************************************************/
-- IGS("VIP на месяц", "vip_na_mesyac"):SetULXGroup("vip")
-- 	:SetPrice(150)
-- 	:SetTerm(30) -- 30 дней
-- 	:SetCategory("Группы")
-- 	:SetDescription("С этой покупкой вы станете офигенными, потому что в ней воооот такая куча крутых возможностей")

-- IGS("PREMIUM навсегда", "premium_navsegda"):SetULXGroup("premium")
-- 	:SetPrice(400)
-- 	:SetPerma() -- навсегда
-- 	:SetCategory("Группы")
-- 	:SetDescription("А с этой покупкой еще офигеннее, чем с покупкой VIP")

-- IGS("Тестовая операторка", "demo_operator"):SetULXGroup("operator")
-- 	:SetPrice(30)
-- 	:SetTerm(0) -- одноразовое
-- 	:SetCategory("Группы")
-- 	:SetDescription("С этой покупкой вы можете попробовать себя в роли оператора. Права исчезнут после перезахода")



/************************************************************
	Продажа поинтов для Поинтшоп 2
	https://www.gmodstore.com/scripts/view/596
************************************************************/
-- IGS("100 донат поинтов","100_points_don", 200):SetPremiumPoints(200) -- дон поинты
-- IGS("1000 обычных поинтов","1000_points", 100):SetPoints(1000) -- обычные поинты



/************************************************************
	Продажа уровней и опыта для Leveling System
	https://github.com/vrondakis/Leveling-System
************************************************************/
-- IGS("5 уровней", "lvl_5", 25):SetLevels(5)
-- IGS("100 опыта", "exp_100", 20):SetEXP(100)










-- -- Каждые 10 мин сообщает в чате о скидках
-- local function start_broadcasting_discount()
-- timer.Create("IGS.Discounts", 60 * 3, 0, function()
-- IGS.NotifyAll("Скидки 20% !")
-- IGS.NotifyAll("Опускаем цены еще ниже! Низкие цены на все предметы!.")
-- IGS.NotifyAll("Донат от ОДНОГО рубля!.")
-- IGS.NotifyAll("Покупай прямо сейчас!")
-- end)
-- end

-- if SERVER then
--     start_broadcasting_discount()
-- end

-- -- Скидка на все предметы
-- for _,ITEM in pairs(IGS.GetItems()) do
-- ITEM:SetDiscountedFrom(ITEM:Price())
-- local skidon = ITEM:Price() * 0.20
-- local stoimost = ITEM:Price() - skidon 
-- ITEM:SetPrice(math.floor(stoimost))
-- end

--------------------------------------------------

-- local MAX_DISCOUNTS = 3 -- Количество товаров, которые получат скидку
-- local PERCENT_DISCOUNT = .15 -- Процент скидки. Здесь 15%

-- local function applyDiscounts(items_ids)
-- 	for _,item_id in ipairs(items_ids) do
-- 		local ITEM = IGS.GetItemByID(item_id)
-- 		if not ITEM.null then
-- 			local old_price = ITEM:Price()
-- 			ITEM:SetPrice(old_price * (1 - PERCENT_DISCOUNT))
-- 			ITEM:SetDiscountedFrom(old_price)
-- 		end
-- 	end
-- end

-- if SERVER then
-- 	util.AddNetworkString("IGS.RegularDiscounts")

-- 	local items_ids = {}
-- 	for _ = 1, MAX_DISCOUNTS do
-- 		local ITEM = table.Random(IGS.ITEMS.STORED)
-- 		if not ITEM.null and not table.HasValue(items_ids, ITEM.id) then
-- 			table.insert(items_ids, ITEM.id)
-- 		end
-- 	end

-- 	applyDiscounts(items_ids)

-- 	SetGlobalString("igs_discounts", util.TableToJSON(items_ids))

-- else
-- 	hook.Add("IGS.Loaded", "fetch_discounts", function()
-- 		local items_ids = GetGlobalString("igs_discounts")
-- 		items_ids = util.JSONToTable(items_ids)
-- 		applyDiscounts(items_ids)
-- 	end)
-- end