-- Мини-настройки
local HOUR = 60 * 60
local REWARD_AFTER = HOUR * 1
local RAWARD_SIZE  = 5 -- размер награды в донат валюте

timer.Create("igs.session_reward", 60, 0, function()
	for _,pl in ipairs(player.GetAll()) do
		pl.igs_last_reward_time = pl.igs_last_reward_time or os.time()

		if os.time() - pl.igs_last_reward_time >= REWARD_AFTER then
			pl.igs_last_reward_time = os.time()
			pl:AddIGSFunds(RAWARD_SIZE, "Награда за игру")
			PerfectCasino.Core.GiveFreeSpin(pl)
			IGS.Notify(pl, "Вы получили бонус ".. RAWARD_SIZE .." тугриков за 1 час игры, а так же Бесплатный Спин в казино!")
		end
	end
end)
