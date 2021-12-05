    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

config = {}

-- ITEMS (pour rajouter des items => client.lua / server.lua)
config.prixitemmanger1 = "~g~5$" -- label du prix du premier item de la catégorie manger
config.prixitemmanger2 = "~g~10$" -- label du prix du second item de la catégorie manger
config.prixitemmanger3 = "~g~15$" -- label du prix du troisième item de la catégorie manger
config.prixitemboire1 = "~g~10$" -- label du prix du premier item de la catégorie boire
config.prixitemboire2 = "~g~20$" -- label du prix du second item de la catégorie boire
config.prixitemboire3 = "~g~20$" -- label du prix du troisième item de la catégorie boire
-- (pour changer le prix réels des items => server.lua ligne 14/30/46/62/78/94)

-- MARKERS (pour changer la rotation et la taille des markers => client.lua ligne 93)
config.markertype = 6 -- type de marker (https://docs.fivem.net/docs/game-references/markers/)
config.red = 255 -- couleur rouge du marker (https://htmlcolorcodes.com/fr/)
config.green = 255 -- couleur verte du marker
config.blue = 255 -- couleur bleu du marker
config.opacity = 50 -- opacité du marker

-- BLIPS / SHOPS
config.blipname = "Supérette" -- nom des blips
config.blipscale = 0.6 -- taille des blips
config.blipcolour = 2 -- couleur des blips
config.blipsprite = 59 -- logo des blips
config.blipdisplay = 4 -- 4 = visible sur la grande map et la mininimap 5 = uniquement visible sur la minimap / 7 = uniquement visible sur la grande map

Config = {
    position = { -- coordonées des supérettes et des blips
            	{x = 2557.18,  y = 382.4,    z = 107.62},
	        {x = -3039.46, y = 585.99,   z = 6.91},
	        {x = -3242.34, y = 1001.7,   z = 11.83},
	        {x = 547.44,   y = 2671.2,   z = 41.16},
	        {x = 1961.43,  y = 3740.94,  z = 31.34},
	        {x = 2678.9,   y = 3280.68,  z = 54.24},
	        {x = 1729.34,  y = 6414.49,  z = 34.04},
	        {x = 25.95,    y = -1345.46, z = 28.5},
	        {x = 1136.14,  y = -982.3,   z = 45.42},
	        {x = -1223.19, y = -907.07,  z = 11.33},
	        {x = -1487.2,  y = -379.53,  z = 39.16},
	        {x = -2968.16, y = 390.43,   z = 14.04},
	        {x = 1166.02,  y = 2708.99,  z = 37.16},
	        {x = 1392.42,  y = 3604.59,  z = 33.98},
	        {x = -48.5,    y = -1757.58, z = 28.42},
	        {x = 1163.26,  y = -324.1,   z = 68.21},
	        {x = -707.67,  y = -914.72,  z = 18.22},
	        {x = -1820.71, y = 792.42,   z = 137.12},
	        {x = 1698.44,  y = 4924.65,  z = 41.06},
    },
}

-- PEDS
-- Les peds se trouvent dans le script loffe_robbery
