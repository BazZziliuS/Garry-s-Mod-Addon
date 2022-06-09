local UNBAN_PRICE = 149
local function unban(steamid64)
	RunConsoleCommand("ulx", "unban", util.SteamIDFrom64(steamid64))
end
hook.Add("IGS.IncomingMessage", "auto_unban", function(d, method)
	if method == "payment.UpdateStatus" and d.extraData == "UNBAN" and d.orderSum >= UNBAN_PRICE then
		unban(d.SteamID64)
		IGS.Transaction(d.SteamID64, -d.orderSum, "Auto unban")
	end
end)