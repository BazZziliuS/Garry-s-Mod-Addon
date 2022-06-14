local VK_API_KEY = "11111111111111" -- Вставьте сюда API ключ. Инструкция по получению: https://forum.gm-donate.net/t/1326/3
local VK_WALL_ID = -11111111111  -- Для https://vk.com/wall-143836547 это -143836547 (у сообществ с минусом)

local function vkRequest(method, params, token, cb)
	params.access_token = token

	http.Post( "https://api.vk.com/method/" .. method, params, function(body)
		local dat = assert(util.JSONToTable(body), "NO JSON FROM VK IN IGS MODULE: " .. tostring(body))
		cb(dat)
	end)
end

local function wallPost(api_key, wall_id, text)
	vkRequest("wall.post", {
		owner_id   = tostring(wall_id),
		message    = text,
		from_group = "1",
		v          = "5.131"
	}, api_key, function(dat)
		if not dat.response then
			PrintTable(dat)
			print("Что-то пошло не так...")
			return
		end

		print("Купоны отправлены на стену ВК")
	end)
end

local function wallPostPrepared(text)
	wallPost(VK_API_KEY, VK_WALL_ID, text)
end

local function genCoupons(cb, sum, amount)
	local coupons = {}
	for i = 1,amount do
		IGS.CreateCoupon(sum, nil, "Пост ВК", function(code)
			coupons[#coupons + 1] = code
			if i == amount then
				cb(coupons)
			end
		end)
	end
end

local function postCoupons(sum, amount)
	genCoupons(function(coupons)
		local msg = "❤ Купоны на " .. PL_IGS(sum) .. " (активировать в /donate):\n\n💥 " .. table.concat(coupons, "\n💥 ") .. "\n\n✨ Тыкай на \"Рекомендовать\" и \"Уведомления\" если тебе интересно получать новости обновлений и халявы первым!"
		wallPostPrepared(msg)
	end, sum, amount)
end


-- Работает только с серверной консоли
concommand.Add("igs_coupons_to_vk", function(pl, _, args)
	if pl ~= NULL then return end
	local sum    = args[1] and tonumber(args[1])
	local amount = args[2] and tonumber(args[2]) or 3
	if not sum then error("Сумма может быть только числом") end
	if amount >= 20 then ErrorNoHalt("Генерация большого кол-ва купонов может привести к задержкам запросов") end

	postCoupons(sum, amount)
end)




local HOUR  = 60 * 60
local DAY   = HOUR * 24
local MONTH = DAY  * 30
-- cookie.Set("last_reset_time", "1654858800")
-- print(cookie.GetNumber("last_reset_time"))
local last_reset_time = cookie.GetNumber("last_reset_time")
if os.time() - (last_reset_time or 0) >= (DAY * 7) then
	RunConsoleCommand("igs_coupons_to_vk", "29", "3")
	cookie.Set("last_reset_time", os.time())
end