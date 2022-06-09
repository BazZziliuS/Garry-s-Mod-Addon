ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Blackjack Table"
ENT.Author = "Owain Owjo & The One Free-Man"
ENT.Category = "pCasino"
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.Spawnable = false
ENT.AdminSpawnable = false

function ENT:SetupDataTables()
	self:NetworkVar("Int", 0, "StartRoundIn")
end

function ENT:GetPadByName(padName)
	if not self.padCache then
		self:GetCurrentPad(Vector(0, 0, 0)) -- Generate the cache
	end

	for i, _ in ipairs(self.padCache) do
		for k, v in pairs(_) do
			if k == padName then
				return k, v
			end
		end
	end
end

PerfectCasino.Core.RegisterEntity("pcasino_blackjack_table", {
	-- Bet data
	bet = {
		default = {d = 1000, t = "num"}, -- Ставка по умолчанию
		max = {d = 3000, t = "num"}, -- Максимальная ставка по умолчанию
		min = {d = 500, t = "num"}, -- Минимальная ставка по умолчанию
		iteration = {d = 500, t = "num"} -- Увеличение ставки при нажатии на стрелку
	},
	turn = {
		timeout = {d = 30, t = "num"} -- Время таймаута когда ход на игроке
	},
	payout = {
		win = {d = 3, t = "num"} -- Умножение ставки =  выигрыш
	},
	general = {
		betPeriod = {d = 15, t = "num"} -- Период 1 ставки до начала игры
	}
},
"models/freeman/owain_blackjack_table.mdl")