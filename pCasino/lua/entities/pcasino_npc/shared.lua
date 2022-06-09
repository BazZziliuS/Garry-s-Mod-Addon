ENT.Type = "ai"
ENT.Base = "base_ai"
ENT.PrintName = "NPC"
ENT.Author = "Owain Owjo & The One Free-Man"
ENT.Category = "pCasino"
ENT.Spawnable = false
ENT.AdminSpawnable = false

PerfectCasino.Core.RegisterEntity("pcasino_npc", {
	text = {
		overhead = {d = "Диллер", t = "string"},
		chat = {d = "Не умеешь играть? Загугли...", t = "string"},
	},
},
"models/freeman/pcasino/owain_croupier_female01.mdl")