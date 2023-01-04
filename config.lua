Config = {}
Config.DrawDistance = 5.0
Config.MarkerSize = {x = 0.2, y = 0.2, z = 0.1}
Config.MarkerType =  2
Config.MarkerColor = {r = 71, g = 181, b = 255, a = 120}
Config.Locale = 'en'

Config.Zones = {
	HunterSeller = {
		Items = {
			{
				name = "meat",
				label = "Viande Sauvage",
				price = 15
			},
			{
				name = "leather_deer_bad",
				label = "Peau Mauvais",
				price = 30
			},
			{
				name = "leather_deer_good",
				label = "Peau Bonne",
				price = 40
			},
			{
				name = "leather_deer_perfect",
				label = "Peau Parfaite",
				price = 50
			}
		},
		Pos = {
			vector3(1993.8796, 3792.2046, 32.1808)
	},
	Size  = 1.0,
	Type  = 1,
	Color = 0,
	ShowBlip = true,
    ShowMarker = true
    },

-- 	To add another shop here is an example 

--	ResselShop = {   -- Change for the name you what for your shop
--		Items = {
--			{
--				name = "",
--				label = "",
--				price = 0
--			},
--			{
--				name = "",
--				label = "",
--				price = 0
--			},
--			{
--				name = "",
--				label = "",
--				price = 0
--			},
--			{
--				name = "",
--				label = "",
--				price = 0
--			}
--		},
--		Pos = {
--			vector3(0000.00, 0000.00, 0000.00)
--	},
--	Size  = 1.0,
--	Type  = 1,
--	Color = 0,
--	ShowBlip = true,
--  ShowMarker = true
--  }

}