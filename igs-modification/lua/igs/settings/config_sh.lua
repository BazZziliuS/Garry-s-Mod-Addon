
-- \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/ \/
--[[-------------------------------------------------------------------------
	ПРЕДМЕТЫ ДОБАВЛЯЮТСЯ В sh_additems.lua
---------------------------------------------------------------------------]]
-- /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\ /\


--[[-------------------------------------------------------------------------
	Настройки валюты
---------------------------------------------------------------------------]]
IGS.C.CURRENCY_NAME = "Тугрики" -- Фановое название. Можете изменить
IGS.C.CURRENCY_SIGN = "Туг."

-- Множественные названия валюты.
-- Пример 1: Доллар, Доллара, Долларов
-- Пример 2: Поинт,  Поинта,  Поинтов
IGS.C.CurrencyPlurals = {
	"тугрик",  -- 1 алкобакс
	"тугрика", -- 3 алкобакса
	"тугриков" -- 5 алкобаксов
}


--[[-------------------------------------------------------------------------
	Настройки активации интерфейса
---------------------------------------------------------------------------]]
-- На какую кнопку будет открываться донат менюшка
-- https://wiki.facepunch.com/gmod/Enums/KEY
IGS.C.MENUBUTTON = KEY_F1


-- /команда для открытия донат менюшки
IGS.C.COMMANDS = {
	["donate"] = true,
	["донат"]  = true,
	["данат"]  = true,
	["магазин"]  = true,
	["shop"]  = true,
	["danate"]  = true,
	["danat"]  = true,
	["donat"]  = true,	
}


--[[-------------------------------------------------------------------------
	Донат инвентарь
---------------------------------------------------------------------------]]
-- Если отключить, вкладка инвентаря исчезнет, а предметы при покупке сразу будут активироваться
-- Станут недоступны некоторые методы, вроде :SetItems(, так как используют инвентарь
IGS.C.Inv_Enabled = true

-- Разрешить выбрасывать предметы с инвентаря на пол
-- Это позволит игрокам покупать донат подарки для друзей или вам делать донат раздачи
IGS.C.Inv_AllowDrop = true



if SERVER then return end -- не смотрите так на меня :)


-- Показывать ли уведомление о новых предметах в донат меню
-- Выглядит вот так https://img.qweqwe.ovh/1526574184864.png
IGS.C.NotifyAboutNewItems = true


-- Эта иконка будет отображена для предмета, если для него не будет установлена кастомная через :SetIcon()
-- Отображается вот тут: https://img.qweqwe.ovh/1494088609445.png
IGS.C.DefaultIcon = "https://i.imgur.com/jD6cPTa.png"


-- Уберите "--" с начала строки, чтобы отключить появление определенного фрейма
IGS.C.DisabledFrames = {
	-- ["faq_and_help"] = true, -- Чат бот (страница помощи)
	-- ["profile"]      = true, -- Страница профиля игрока (с транзакциями)
	-- ["purchases"]    = true, -- Активные покупки
}


-- Оставьте так, если не уверены
-- Инфо: https://vk.cc/6xaFOe
IGS.C.DATE_FORMAT = "%d.%m.%y %H:%M:%S"
IGS.C.DATE_FORMAT_SHORT = "%d.%m.%y"



hook.Add("IGS.Initialized", "IGS.ColorsLoad", function()
	IGS.S.COLORS.FRAME_HEADER        = Color(34, 38, 42) -- Фон верхушки фреймов в т.ч. пополнения счета и т.д. https://img.qweqwe.ovh/1491950958825.png
	IGS.S.COLORS.ACTIVITY_BG         = Color(40, 46, 51, 253) -- Фон в каждой вкладке (основной) https://img.qweqwe.ovh/1509370647204.png
	IGS.S.COLORS.TAB_BAR             = Color(34, 38, 42) -- Фон таб бара https://img.qweqwe.ovh/1509370669492.png

	IGS.S.COLORS.PASSIVE_SELECTIONS  = Color(34, 38, 42) -- Фон панели тегов, цвет кнопки с балансом, верхушки таблиц, не выделенные кнопки https://img.qweqwe.ovh/1509370720597.png
	IGS.S.COLORS.INNER_SELECTIONS    = Color(34, 38, 42) -- Фон иконок на плашках, фон панелек последних покупок... https://img.qweqwe.ovh/1509370766148.png

	IGS.S.COLORS.SOFT_LINE           = Color(0, 150, 135) -- Линия между секциями, типа "Информация" и "Описание" в инфе об итеме
	IGS.S.COLORS.HARD_LINE           = Color(0, 150, 135) -- Обводки панелей

	IGS.S.COLORS.HIGHLIGHTING        = Color(0, 150, 135)   -- Обводка кнопок, цвет текста не активной кнопки
	IGS.S.COLORS.HIGHLIGHT_INACTIVE  = Color(0, 150, 135) -- Цвет иконки неактивной кнопки таббара, мигающая иконка на фрейме помощи https://img.qweqwe.ovh/1509371884592.png

	IGS.S.COLORS.TEXT_HARD           = Color(255,255,255)       -- Заголовки, выделяющиеся тексты https://img.qweqwe.ovh/1509372019687.png
	IGS.S.COLORS.TEXT_SOFT           = Color(255,255,255) -- Описания, значения чего-то
	IGS.S.COLORS.TEXT_ON_HIGHLIGHT   = Color(255,255,255) -- Цвет текста на выделенных кнопках

	IGS.S.COLORS.LOG_SUCCESS         = Color(76,217,100)  -- В логах пополнения цвет успешных операций
	IGS.S.COLORS.LOG_ERROR           = Color(255,45,85)   -- В логах пополнения цвет ошибок
	IGS.S.COLORS.LOG_NORMAL          = Color(255,255,255)       -- В логах пополнения обычные записи

	IGS.S.COLORS.ICON                = Color(255,255,255) -- цвет иконок на плашечках
end)


-- Кнопки, что будут тут:
-- https://img.qweqwe.ovh/1487168681961.png
-- IGS.C.DepositButtons = {
--     {
--         TEXT = "Как пополнить?",
--         FUNC = function()
--             IGS.OpenURL("https://www.youtube.com/watch?v=9jQdkTWQdB0")
--         end
--     },
--     {
--         TEXT = "А меня не обманут?",
--         FUNC = function(s)
--             IGS.ShowNotify("Нам не зачем портить свою репутации. В случае ошибки авто-доната, отпишитесь нам в личные сообщения в группу вк vk.com/skplayrp",s.TEXT)
--         end
--     },
--     {
--         TEXT = "Я боюсь за свой пароль",
--         FUNC = function(s)
--             IGS.ShowNotify(
--                 "Мы не имеем возможности перехватывать пароль, который вы вводите при входе в кошелек, " ..
--                 "так как это происходит на сайте самой платежной системы, " ..
--                 "в чем вы можете убедиться, посмотрев на адресную строку после начала пополнения",
--                 s.TEXT
--             )
--         end
--     },
--     {
--         TEXT = "Как быстро начисляются деньги?",
--         FUNC = function(s)
--             IGS.ShowNotify(
--                 "Деньги начисляются мгновенно после снятия средств с вашего электронного кошелька (Qiwi, WebMoney и т.д.), " ..
--                 "мобильного счета или банковской карты. Если этого не произошло - не волнуйтесь. Просто перезайдите на сервер. ",
--                 s.TEXT
--             )
--         end
--     },
--     {
--         TEXT = "Что за " .. IGS.C.CURRENCY_NAME .. "?", -- Что за алкобаксы? Удалите, если вы отключили донат валюту
--         FUNC = function()
--             IGS.WIN.AboutCurrency()
--         end
--     },
--     {
--         TEXT = "Активировать купон",
--         FUNC = function(s)
--             IGS.WIN.ActivateCoupon()
--         end
--     },
-- }
 
-- Баннеры, отображаемые в главной вкладке услуг (570xNpx) (https://img.qweqwe.ovh/1492620539502.png)
-- Если под фильтр попадает несколько баннеров - берется случайный
-- Идеи: ("Пополнение счета в 2 клика", "Новинка! (TTS,/chatu)", "Акция! Сэкономь блабла", "Купите набор ножей" (для тех, кто покупал хоть 1), "Купите премиум" (випам))
 
-- Объявление о бонусе 10% за первое пополнение
-- Сам бонус настраивается в sh_addlevels.lua
-- IGS.AddBanner("http://i.imgur.com/SQqUtu8.png")
--     :SetFilter(function(pl) return IGS.TotalTransaction(pl) < 1 end)
--     :SetAction(function()
--         IGS.WIN.Deposit()
--         IGS.ShowNotify(
--             "Привет! У меня для тебя отличное ОДНОРАЗОВОЕ предложение." ..
--             "\n\nПополни свой счет на любую сумму и получи 10% от нее в качестве подарка." ..
--             "\n\nЧем более щедрым окажется твой кошелек - тем более щедрым будет подарок :)" ..
--             "\n\nНапример, пополнив счет на 10 руб, в подарок ты получишь всего 1 руб. А если пополнить на 2000 - подарок будет уже 200!",
 
--             "Не жадный бонус!"
--         )
--     end)

 
