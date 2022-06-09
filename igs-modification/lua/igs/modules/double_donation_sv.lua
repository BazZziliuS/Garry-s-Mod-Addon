--[[-------------------------------------------------------------------------
	Скрипт, удваивающий первый донат после 12 часов дня (опционально)
	Удвоение работает только для первого доната после выбранного времени
	Двойной донат может забрать только первый игрок, который задонатит
	Всем остальным придется ждать следующего дня
---------------------------------------------------------------------------]]


-- в 1 часу столько секунд. Не трогать
local HOUR = 3600

-- Бонус можно получить после 12 часов дня
-- Время указано в секундах от начала дня
local TIME_START = 22 * HOUR

-- Временная зона. Здесь МСК +3 часа
local TIMEZONE_OFFSET = 3 * HOUR

local function getTodayBonusTime()
	return sql.QueryValue("SELECT strftime('%s', datetime('now','start of day','+" .. TIME_START .. " seconds'));")
		+ TIMEZONE_OFFSET
end

-- Shitcoded tester (debug code) https://pastebin.com/gEDDGk7J
local function canReceiveBonusNow()
	local prev_x2_bonus = bib.getNum("igs:prev_x2_day_bonus_time", 0) -- последнее получение
	local today_bonus_time = getTodayBonusTime()


	local now = os.time()
	return (now - previous_receive_time) >= HOUR * 24
		or (previous_receive_time < today_bonus_time and now >= today_bonus_time)
end

hook.Add("IGS.PlayerDonate", "x2_day_bonus", function(pl, diff)
	if canReceiveBonusNow() then
		pl:AddIGSFunds(diff, "Бонус за первое пополнение после 12:00")
		IGS.NotifyAll(pl:Nick() .. " первым задонатил после 12:00 и получил в 2 раза больше")
		bib.setNum("igs:prev_x2_day_bonus_time", os.time())
		timer.Remove("igs_x2_bonus")
	end
end)

timer.Simple(0, function()
	timer.Create("igs_x2_bonus", 35, 0, function()
		if canReceiveBonusNow() then
			IGS.NotifyAll("Предложение дня! Первый донат с этого момента будет удвоен!")
			timer.Adjust("igs_x2_bonus", HOUR)
		end
	end)
end)
