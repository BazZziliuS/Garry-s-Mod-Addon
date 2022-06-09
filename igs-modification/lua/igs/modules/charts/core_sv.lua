-- В sNoteLike можно использовать знак процента "%", как групповой символ
-- Т.е. мы можем найти все примечания, вроде этих: Note1, Note2, Note Something
-- .. по такому шаблону: Note%
function IGS.ChartSumTransactions(fCallback, sSelectAs, iDaysInterval, sNoteLike)
	IGS.Query("/chart/sumTransactions",{
		select_as     = sSelectAs,
		days_interval = iDaysInterval,
		note_like     = sNoteLike,
	},fCallback) -- таблица
end
-- IGS.ChartSumTransactions(PT, "Ня", 60, "P: %")

TABLE_TRANSACTIONS = 1 -- транзакции
TABLE_PURCHASES    = 2 -- покупки
TABLE_COUPONS      = 3 -- купоны
function IGS.ChartCountValuesOfColumn(fCallback, iTableID, sSelectAs, sItemUID)
	IGS.Query("/chart/countValuesOfColumn",{
		table_id  = iTableID,
		select_as = sSelectAs,
		item_uid  = sItemUID,
	},fCallback) -- таблица
end
-- IGS.ChartCountValuesOfColumn(PT, TABLE_PURCHASES, "Ня", nil)


local function nall()
	IGS.NotifyAll("Данные графиков в /donate обновлены") -- Для обновления на клиенте нужен перезаход
end

local step = 0
hook.Add("PlayerInitialSpawn", "UpdateCharts", function()
	step = (step + 1) % 100

	if step == 1 then -- первый вход и каждые 100
		IGS.CHARTS.Update(nall)
	end
end)
