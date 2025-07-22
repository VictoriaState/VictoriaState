-------------------------------
-- DOCUMENTATION : https://docs.jumpon-studios.com/
--------------------------------

-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO OVERWRITE CONFIG VALUE, USE overwriteConfig.lua file instead
-------------------------------------------

Config = {}

Config.Debug = false
Config.BlipSprite = 'blip_shop_tailor' -- Clothing shop sprite
Config.BlipSpriteWardrobes = 'blip_shop_wardrobe'
Config.DisplayOutfitId = false
Config.PercentResell = 0.33        -- Use 0 tu turn off the resell feature : 0.5 = 50% of the initial price
Config.CanResellInWardrobe = false --Allow player to resell clothes in wardrobe
Config.OpenStoreNewCharacter = true
Config.EnablePrompt = true
Config.ExtraLightIntensity = 10.0     -- Light added in the store to see better the character
Config.OffsetRoutingBucket = 0        --value added to the serverID of the player to define the instance ID
Config.enableClothesManagement = true --use false to turn off the clothes management feature
Config.maxFailLoadClothesData = 5

Config.commands = {         --set false to disable a command
	refreshAllClothes = "rac", --command to refresh all clothes, , use "/rac 0" to only update clothes states
	clothes = {
		--clothes commands (use false to disable it)
		gloves = 'gloves',
		eyewear = 'eyewear',
		dresses = 'dresses',
		shirts_full = 'shirts_full',
		armor = 'armor',
		gauntlets = 'gauntlets',
		suspenders = 'suspenders',
		neckties = 'neckties',
		neckwear = 'neckwear',
		vests = 'vests',
		coats = 'coats',
		coats_closed = 'coats_closed',
		cloaks = 'cloaks',
		ponchos = 'ponchos',
		masks = 'masks',
		masks_large = 'masks_large',
		hats = 'hats',
		accessories = 'accessories',
		loadouts = 'loadouts',
		satchels = 'satchels',
		jewelry_rings_right = 'jewelry_r',
		jewelry_rings_left = 'jewelry_l',
		jewelry_bracelets = 'bracelets',
		aprons = 'aprons',
		pants = 'pants',
		skirts = 'skirts',
		belts = 'belts',
		belt_buckles = 'belt_buckles',
		gunbelts = 'gunbelts',
		holsters_left = 'holsters',
		boots = 'boots',
		boot_accessories = 'boot_accessories',
		spats = 'spats',
		chaps = 'chaps',
		badges = 'badges',
		gunbelt_accs = 'gunbelt_accs',
		hair_accessories = 'hair_accessories'
	},
}

Config.oldVORPChar = false --(Only for VORP users) to use the C# version of VORP Character

Config.Keys = {            --https://github.com/femga/rdr3_discoveries/tree/master/Controls
	enter = "INPUT_FRONTEND_ACCEPT",
	buyGold = "INPUT_INTERACT_ANIMAL",
	turn = "INPUT_AIM_IN_AIR",
	delete = "INPUT_FRONTEND_RS",
	resell = "INPUT_CONTEXT_X",
	zoomIn = "INPUT_INTERACT_OPTION2",
	zoomOut = "INPUT_OPEN_JOURNAL",
	buyOutfit = "INPUT_LOOT3"
}

Config.KeysDisabled = {
	`INPUT_MOVE_UD`,
	`INPUT_MOVE_LR`,
	`INPUT_MOVE_LB`,
	`INPUT_COVER`,
	`INPUT_ATTACK`,
	`INPUT_NEXT_WEAPON`,
	`INPUT_PREV_WEAPON`,

}

Config.clothesInItem = false              -- set true to allow clothes in item
Config.removeClothesItemAfterUsed = false -- remove the clothes after used it
Config.clothesItem = {                    -- Only necessary if Config.clothesInItem = true
	gloves = 'gloves',
	eyewear = 'eyewear',
	dresses = 'dresses',
	shirts_full = 'shirts_full',
	armor = 'armor',
	gauntlets = 'gauntlets',
	suspenders = 'suspenders',
	neckties = 'neckties',
	neckwear = 'neckwear',
	vests = 'vests',
	coats = 'coats',
	coats_closed = 'coats',
	cloaks = 'cloaks',
	ponchos = 'ponchos',
	masks = 'masks',
	masks_large = 'masks',
	hats = 'hats',
	accessories = 'accessories',
	loadouts = 'loadouts',
	satchels = 'satchels',
	jewelry_rings_right = 'jewelry',
	jewelry_rings_left = 'jewelry',
	jewelry_bracelets = 'jewelry',
	aprons = 'aprons',
	pants = 'pants',
	skirts = 'skirts',
	belts = 'belts',
	belt_buckles = 'belt_buckles',
	gunbelts = 'gunbelts',
	holsters_left = 'holsters',
	boots = 'boots',
	boot_accessories = 'boot_accessories',
	spats = 'spats',
	chaps = 'chaps',
	badges = 'badges',
	gunbelt_accs = 'gunbelt_accs',
	hair_accessories = 'hair_accessories'
}

Config.outfitInItem = true               -- set true to allow buying the outfit in 1 item
Config.removeOutfitItemAfterUsed = false -- remove the clothes after used it
Config.outfitItem = "outfit"

Config.Stores = {
	{                                                       -- VALENTINE
		book = vector4(-326.17, 773.757, 117.5, -170.0),      --location of the book
		fittingRoom = vector4(-329.31, 775.11, 120.63, 294.79), --location of the fitting room
		pedCoords = vector4(-325.67, 772.63, 116.44, 11.3),   --location of the tailor ped
		pedModel = `S_M_M_Tailor_01`,                         --model of the tailor ped
		blip = true,                                          --if the blip is displayed for this store
		distancePrompt = 2.0,                                 --distance to display the prompt
		needInstance = true,
		useOutfitMenu = true,
	},
	{ -- SAINT DENIS
		book = vector4(2554.619, -1167.834, 53.746, 0.0),
		fittingRoom = vector4(2555.89, -1161.23, 52.7, 12.85),
		pedCoords = vector4(2554.6, -1166.83, 52.7, 180.95),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
	},
	{ -- BLACK WATER
		book = vector4(-761.98, -1292.61, 43.885, 180.0),
		fittingRoom = vector4(-767.74, -1295.17, 42.84, 304.87),
		pedCoords = vector4(-761.75, -1293.92, 42.84, 357.16),
		pedModel = `S_M_M_Tailor_01`,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
	},
	{ -- Tumbleweed
		book = vector4(-5486.660, -2936.75, -0.346, -144.0),
		fittingRoom = vector4(-5479.77, -2933.07, -1.36, 181.29),
		pedCoords = false,
		blip = true,
		distancePrompt = 2.0,
		needInstance = true,
		useOutfitMenu = true,
	}
}

Config.Wardrobes = {
	{
		location = vector3(1223.55, -1288.67, 76.9),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(-184.5, 625.02, 114.09),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
	{
		location = vector3(2549.82, -1169.58, 53.68),
		blip = true,
		distancePrompt = 2.0,
		needInstance = false
	},
}

-- Price for each category
-- use -1 to turn off the category
Config.Prices = {
	coats_closed = 5,
	chaps = 4,
	spats = 5,
	ponchos = 4.25,
	holsters_left = 3.12,
	masks = 10,
	neckwear = 2.15,
	armor = 20,
	jewelry_rings_left = 1.25,
	jewelry_rings_right = 1.25,
	boot_accessories = 3.55,
	gloves = 4.25,
	badges = 2,
	gunbelts = 5,
	loadouts = 6.7,
	vests = 5,
	shirts_full = 5,
	pants = 5,
	suspenders = 1.5,
	gunbelt_accs = 1,
	hats = 3.5,
	cloaks = 5,
	coats = 5,
	belts = 2,
	gauntlets = 3,
	eyewear = 6,
	boots = 5,
	jewelry_bracelets = 2,
	satchels = 10,
	accessories = 2,
	neckties = 2,
	skirts = 5,
	belt_buckles = 1,
	dresses = 5
}

Config.AllowClothesOnPed = {
	ponchos = false,
	hair_accessories = false,
	skirts = false,
	gloves = false,
	vests = false,
	coats = false,
	coats_closed = false,
	pants = false,
	boots = false,
	shirts_full = false,
	spats = false,
	belts = false,
	belt_buckles = false,
	boot_accessories = false,
	gunbelts = false,
	gauntlets = false,
	holsters_left = false,
	loadouts = false,
	suspenders = false,
	dresses = false,
	neckties = false,
	neckwear = false,
	accessories = false,
	satchels = false,
	jewelry_rings_right = false,
	jewelry_rings_left = false,
	jewelry_bracelets = false,
	aprons = false,
	chaps = false,
	badges = false,
	gunbelt_accs = false,
	eyewear = false,
	cloaks = false,
	armor = false,
	masks = false,
	masks_large = false,
	hats = false,
}

Config.modelPrices = {}
Config.modelPrices["male"] = {}
Config.modelPrices["female"] = {}
for category in pairs(Config.Prices) do
	Config.modelPrices["male"][category] = {}
	Config.modelPrices["female"][category] = {}
end
--Config.modelPrices[<sexe>][<category>][<number>] = <price>
Config.modelPrices["male"]["hats"][2] = Config.Prices.hats * 1.25
Config.modelPrices["male"]["hats"][3] = { money = 2.75, gold = 2 }
Config.modelPrices["male"]["hats"][4] = 5.5
Config.modelPrices["male"]["hats"][5] = 4.25
Config.modelPrices["male"]["hats"][6] = Config.Prices.hats * 2
Config.modelPrices["female"]["skirts"][6] = Config.Prices.hats * 2
Config.modelPrices["female"]["hats"][2] = -1

--Function to buy item with gold for framework without native way to do it
Config.CanBuyWithGold = function(source, price)
	return false
end

--Variable to add more clothes
Config.moreClothes = {
	male = {},
	female = {}
}

-- Config.moreClothes["male"]["boots"] = {
-- 	{
-- 		{ hash = 0x5CF5A760 },
-- 	},
-- }
--[[
example :
Config.moreClothes[<sexe>][<category>] = {
	{ --model 1
		{ hash = XXXXX }, --variation 1
		{ hash = XXXXX }, --variation 2
	},
	{ --model 2
		{ hash = XXXXX }, --variation 1
		{ hash = XXXXX }, --variation 2
		{ hash = XXXXX }, --variation 3
		{ hash = XXXXX }, --variation 4
	},
}
]]
