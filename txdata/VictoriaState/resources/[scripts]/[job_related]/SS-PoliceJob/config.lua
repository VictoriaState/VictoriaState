-- Author 'blueyes' by Sirec Studio --
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

-- local POLICE = exports["SS-PoliceJob"]:GetPoliceONDUTY() > export to check the number of police officers online and to check if you are onDuty / offDuty!

-- EXPORT TO SEND NOTIFICATIONS:

--[[local coords = {x = -333.093, y = 746.8793, z = 116.8956}
local notify = "POLICE NOTIFY !"
local bliptype = 1366733613
local blipradius = 30.0
local blipname = "POLICE BLIP !"
local blipremove = 10
exports["SS-PoliceJob"]:PoliceAlert(coords, notify, blipradius, bliptype, blipname, blipremove)]]

Config = {

WebhookAvatar = "https://i.imgur.com/OAE8DpR.png",
WebhookSetJob = "",
WebhookItems = "",
WebhookDeadLogs = "",
WebhookDuty = "",
WebhookStash = "",
WebhookSearch = "",
WebhookMoney = "",
----------------------------------------------------------------------------------------------------------------------------
Registry = false, -- If you have SS-Registry set it true !
PoliceMission = false, -- If you have SS-PoliceMissions set it true !
Archives = true, -- If you have SS-Archives set it true !
Lockpick = false, -- If you have SS-Lockpick set it true (open the prison wagon as a player and use lockpick if a player nearby is handcuffed)
BankHeist = false, -- If you have SS-BankHeist set it true (To receive alerts when a bank heist start!)
Bank = false, -- If you have SS-Bank you can have money account for every section !
ClothingScript = true, -- If you have any clothing script you can change your clothes in the menu !
RemoveDeadHandcuffed = false, -- true if you want to remove Handcuffs when die
SSMetabolism = false, -- If you have SS-Metabolism, you can set to remove rep and add stress when kill someone !
AddStress = 10, -- If you have SS-Metabolism, add stress when you kill someone !
RemoveRep = 100, -- If you have SS-Metabolism, remove 100 rep when you kill someone !
----------------------------------------------------------------------------------------------------------------------------
Key = 0xCEFD9220, -- Key to press "E"
Key1 = 0x760A9C6F, -- Key to press "G"
PutWagonBut = 0x4BC9DABB, -- G
GetWagonBut = 0xD9D0E1C0, -- SPACE
Align = "right", -- Align for Menu
AllowedJobs = {"police", "sheriff", "deputysheriff", "marshall", "deputydetective", "detective", "sheriffval", "Guvernator"}, -- Add what job's you want to do this job!
DetectiveJob = {"deputydetective", "detective"}, -- This job is allowed to use the verify kit !
NotAllowedDuty = {"bountyhunter"}, -- these job's from AllowedJobs are not allowed to go onDuty !
FirePolice = "unemployed", -- Job received when a player is fired, the jobgrade is set to 0 !
JobGrade = 4, -- Job Grade allowed to employ/ fire players and open sezied inventory !
SeizedInvJobGrade = 4, -- Job Grade allowed to open a seized inventory !
BuyJobGrade = 3, -- Job Grade allowed to buy items and weapons !
WagonInventory = 400, -- Inventory for ArmySupplyWagon
PoliceEscort = "escort", -- Command used to escort other players !
----------------------------------------------------------------------------------------------------------------------------
UsePayment = true, -- If you want to receive payment's
GivePlayerMoney = false, -- If true player will receive money on character, if false will receive money at PoliceCabinet
SynPayment = false, -- PUT SYN SOCIETY LEDGER FROM WHERE TAKE THE MONEY "police" or false if you don't use it !
PaymentTime = 1800, -- 1800 seconds (30 minutes)
PaymentGrade = {2.5, 3.0, 4.0, 5.0, 6.0, 7.0, 14.0, 20.0, 25.0, 35.0}, -- Payment on grades from 1 to 10!
----------------------------------------------------------------------------------------------------------------------------
UseDutyButton = true, -- If you want to use the duty button
UseNotify = true, -- If you want to use police notify
OnDuty = true, -- If you want to set onduty from command
Distance = 2.5, -- distance you can check a dead body
InspectTime = 10, -- 10 seconds to check how the player died
FleeAlertTime = 15, -- 15 seconds for npc to flee before police is alerted when shoot
AlertBlipTime = 30, -- 30 seconds for police to see the radius on the map where it was fired, selling drugs or Bank Heist!
TimeAlert = 5, -- for 5 seconds the police will not receive another alert from the same ped who fired (this prevent spamm)
AlertBlip = 500148876, -- blip type
AlertBlipSD =  -1822497728, -- blip type for Selling Drugs !
AlertBank = 688589278, -- blip type for Bank Heist
AlertZone = 20.0, -- Zone for the circle on the map
BankHZone = 30.0, -- Zone for the circle on the map
----------------------------------------------------------------------------------------------------------------------------
InspectDict = 'mini_games@story@mob4@heal_jules@bandage@arthur', -- Dictionary Anim When Inspect
InspectAnim = 'bandage_add_start', -- Animation selected from Dictionary!
ItemCheck = "detectiveverify", -- Item to use when check a dead body!
UseItemMetadata = true, -- if you wanna use detective kit metadata !
KitsDurability = 100, -- ItemCheck durability !
RemoveWhenUse = 20, -- How much durability to remove when use !
JoblockCuff = false, -- If you wan't only Police to be able to use handcuffs and handcuffs key !
ItemHandcuffs = "handcuffs", -- Item to use when you handcuff a player
ItemHandcuffsKey = "handcuffskey", -- Item to use when you unchain a player
----------------------------------------------------------------------------------------------------------------------------
SearchFunction = true, -- if you wan't to use this search function ! (Works only on VORP)
JobLockSearch = false, -- true if wan't only Police to be able searching people
SearchScenario = "WORLD_HUMAN_CROUCH_INSPECT", -- Scenario when start Search
SearchScenario1 = "WORLD_HUMAN_INSPECT", -- Scenario when start search handcuffed player !
SearchPlayer = 0xA1ABB953, -- Don't change
SearchCuff = 0x760A9C6F, -- (G)
SearchAct2 = 0xF84FA74F, -- MOUSE2
TakeMoney = true, -- if players are allowed to take money
TakeGold = true, -- if players are allowed to take gold 
TakeInventory = true, -- if players are allowed to take from inventory 
Hogtied = true, -- Search hogtied players
HandCuffed = true, -- Search handcuffed players
Dead = false, -- Search dead players
ItemsBlackList = { -- VORP WEP / DB ITEMS You can't loot
    "WEAPON_SNIPERRIFLE_CARCANO",
    "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",
    "WEAPON_MELEE_KNIFE",
    "archivesbook",
    "boatcertificate",
    "handcuffskey",
    "fixedcamera",
    "empty_can",
    "can_25",
    "can_50",
    "can_75",
    "can_100",
},
----------------------------------------------------------------------------------------------------------------------------
    
PoliceCabinet = {
	[1] = {
		Name = "Valentine Sheriff", -- Police Name
        Pos = {-277.087, 804.022, 118.380, 270.414},
        ChangeDuty = {-278.347, 803.325, 118.380, 98.097}, 
        PolMenu = {-277.004, 810.934, 118.382, 100.209},
		WagonPos = {-281.260, 827.719, 118.573, 283.312},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"sheriffval", "marshall", "police", "Guvernator"},
        Showblip = true,
        Blip = 778811758,
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE", -- set false if you don't want
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	},
	[2] = {
		Name = "Annesburg Sheriff", -- Police Name
        Pos = {2907.283, 1313.988, 43.938, 270.414},
        ChangeDuty = {2906.927, 1315.265, 43.938, 98.097}, 
        PolMenu = {2909.674, 1309.006, 43.938, 100.209},
		WagonPos = {2915.643, 1308.971, 43.146, 160.312},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"sheriff", "marshall", "police"},
        Showblip = true, 
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE",
        Blip = 778811758,
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	},
	[3] = {
		Name = "Rhodes Sheriff", -- Police Name
        Pos = {1362.903, -1300.801, 76.760, 270.414},
        ChangeDuty = {1362.903, -1300.801, 76.760, 98.097}, 
        PolMenu = {1361.552, -1303.204, 76.767, 100.209},
		WagonPos = {1358.910, -1293.357, 76.682, -110.000},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"sheriff", "marshall"},
        Showblip = true, 
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE",
        Blip = 778811758,
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	},
	[4] = {
		Name = "Saint Denis Police", -- Police Name
        Pos = {2508.449, -1308.846, 47.953, 270.414},
        ChangeDuty = {2508.449, -1308.846, 47.953, 98.097}, 
        PolMenu = {2507.538, -1301.395, 47.953, 100.209},
		WagonPos = {2489.417, -1310.491, 47.865, 180.000},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"police", "marshall"},
        Showblip = true, 
        Blip = 778811758,
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE",
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	},
	[5] = {
		Name = "Strawberry Sheriff", -- Police Name
        Pos = {-1807.332, -348.170, 163.655, 270.414},
        ChangeDuty = {-1807.332, -348.170, 163.655, 98.097}, 
        PolMenu = {-1811.868, -353.766, 163.649, 100.209},
		WagonPos = {-1802.891, -355.455, 163.143, -140.000},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"sheriff", "marshall"},
        Showblip = true, 
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE",
        Blip = 778811758,
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	},
	[6] = {
		Name = "Tumbleweed Sheriff", -- Police Name
        Pos = {-5531.050, -2930.150, -2.361, 270.414},
        ChangeDuty = {-5531.050, -2930.150, -2.361, 98.097}, 
        PolMenu = {-5526.896, -2928.556, -2.360, 100.209},
		WagonPos = {-5536.182, -2932.195, -2.862, 115.000},
		Stash = 5000,
		SeizedStash = 10000,
        Zone = 15,
		CityJob = {"sheriff", "marshall"},
        Showblip = true, 
		BlipColour = "BLIP_MODIFIER_DEBUG_BLUE",
        Blip = 778811758,
        ParkDistance = 5.0,
		DutyDist = 1.5,
        Distance = 2.5
	}
},
----------------------------------------------------------------------------------------------------------------------------
Items = {
	[1] = {
		item = "badge",
    	label = "Insigna",
    	desc = "Necesar pentru toti oamenii legii !",
		type = "item",
    	price = 0.5,
        grade = 1,
		components = {},
	},
	[2] = {
		item = "archivesbook",
    	label = "Carte Archive",
    	desc = "Agenda necesara oricarui om al legii !",
		type = "item",
    	price = 0.5,
		grade = 1,
		components = {},
	},
	[3] = {
		item = "handcuffs",
    	label = "Catuse",
    	desc = "Catuse pentru infractori !",
		type = "item",
    	price = 0.5,
		grade = 1,
		components = {},
	},
	[4] = {
		item = "handcuffskey",
    	label = "Chei Catuse",
    	desc = "Chei doar pentru catuse !",
		type = "item",
    	price = 1.0,
		grade = 1,
		components = {},
	},
	[5] = {
		item = "telegram",
    	label = "Telegrama",
   	 	desc = "Necesar daca doresti sa contactezi pe cineva !",
		type = "item",
    	price = 0.1,
		grade = 1,
		components = {},
	},
    [6] = {
		item = "ammopistolnormal",
    	label = "Munitie Normala Pistol",
   	 	desc = "Munitie Pistol !",
		type = "item",
    	price = 1.5,
		grade = 5,
		components = {},
	},
    [7] = {
		item = "ammorevolvernormal",
    	label = "Munitie Normala Revolver",
   	 	desc = "Munitie Revolver !",
		type = "item",
    	price = 1.0,
		grade = 5,
		components = {},
	},
	[8] = {
		item = "ammoriflenormal",
    	label = "Munitie Normala Pusca",
   	 	desc = "Munitie Pusca !",
		type = "item",
    	price = 2.0,
		grade = 5,
		components = {},
	},
	[9] = {
		item = "ammoshotgunnormal",
    	label = "Munitie Normala Shotgun",
   	 	desc = "Munitie Shotgun !",
		type = "item",
    	price = 2.5,
		grade = 5,
		components = {},
	},
	[10] = {
		item = "ammorepeaternormal",
    	label = "Munitie Normala Repeater",
   	 	desc = "Munitie Repeater !",
		type = "item",
    	price = 2.0,
		grade = 5,
		components = {},
	},
	[11] = {
		item = "detectiveverify",
    	label = "Kit Detectiv",
    	desc = "Trusa speciala doar pentru detectivi pentru a verifica din ce cauza a murit o persoana!",
		type = "item",
    	price = 4.0,
		grade = 1,
		components = {},
	},
	[12] = {
		item = "codpenal",
    	label = "Codul Penal",
    	desc = "Carte privind codul penal !",
		type = "item",
    	price = 0.5,
		grade = 1,
		components = {},
	},
	[13] = {
		item = "ammorifleexpress",
    	label = "Munitie Express Pusca",
		type = "item",
    	desc = "Munitie Express pentru orice tip de pusca !",
    	price = 10.0,
		grade = 5,
		components = {},
	},
	[14] = {
		item = "legalbomb",
    	label = "Dinamita demolare",
		type = "item",
    	desc = "Folosita de persoane instruite pentru a distruge lucruri ilegale !",
    	price = 5.0,
		grade = 1,
		components = {},
	},
	[15] = {
		item = "stampilabilet",
    	label = "Stampila Bilet",
		type = "item",
    	desc = "Se foloseste pentru a valida biletele de tren !",
    	price = 1.0,
		grade = 1,
		components = {},
	},
	[16] = {
		item = "stampilavama",
    	label = "Stampila Vama",
		type = "item",
    	desc = "Se foloseste pentru a stampila certificatele !",
    	price = 1.0,
		grade = 1,
		components = {},
	},
	[17] = {
		item = "WEAPON_KIT_CAMERA_ADVANCED",
    	label = "Camera Avansata Politie",
		type = "weapon",
    	desc = "Camera Avansata",
    	price = 10.0,
		grade = 5,
		components = {},
	},
	[18] = {
		item = "WEAPON_MELEE_KNIFE",
    	label = "Cutit Politie",
		type = "weapon",
    	desc = "Cutit",
    	price = 2.0,
		grade = 5,
		components = {},
	},
	[19] = {
		item = "WEAPON_THROWN_BOLAS",
    	label = "Bolas",
		type = "weapon",
    	desc = "Bolas",
    	price = 30.0,
		grade = 5,
		components = {},
	},
	[20] = {
		item = "ammobola",
    	label = "Munitie Bolas",
		type = "item",
    	desc = "Munitie Bolas",
    	price = 50.0,
		grade = 5,
		components = {},
	},
	[21] = {
		item = "WEAPON_LASSO_REINFORCED",
    	label = "Lasou Imbunatatit Politie",
    	desc = "Lasou folosit pentru prinderea infractorilor!",
		type = "weapon",
    	price = 5.0,
		grade = 4,
		components = {},
	},
	[22] = {
		item = "WEAPON_KIT_BINOCULARS",
    	label = "Binoclu",
   	 	desc = "Vezi lucrurile clar si de la distanta !",
		type = "weapon",
    	price = 10.0,
		grade = 4,
		components = {},
	},
	[23] = {
		item = "WEAPON_REVOLVER_LEMAT",
    	label = "Revolver Lemat Politie",
   	 	desc = "Revolver Lemat",
		type = "weapon",
    	price = 25.0,
		grade = 4,
		components = {},
	},
	[24] = {
		item = "WEAPON_PISTOL_MAUSER",
    	label = "Pistol Mauser Politie",
   	 	desc = "Pistol Mauser",
		type = "weapon",
    	price = 40.0,
		grade = 7,
		components = {},
	},
	[25] = {
		item = "WEAPON_REPEATER_WINCHESTER",
    	label = "Repeater Winchester Politie",
   	 	desc = "Repeater Winchester",
		type = "weapon",
    	price = 30.0,
		grade = 7,
		components = {
			SCOPE = {
            	COMP = "COMPONENT_RIFLE_SCOPE02",
				MATERIAL = "COMPONENT_LONGARM_SIGHT_MATERIAL_3"
            },
			WRAP = {
				COMP = "COMPONENT_REPEATER_WINCHESTER_WRAP6",
				MATERIAL = "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER",
                TINT = "COMPONENT_LONGARM_WRAP_TINT_B_8",
			}
		},
	},
	[26] = {
		item = "WEAPON_SHOTGUN_DOUBLEBARREL",
    	label = "Shotgun DoubleBarrel Politie",
   	 	desc = "Varianta exotica si rara a pustii cu doua tevi !",
		type = "weapon",
    	price = 50.0,
		grade = 7,
		components = {
			BARREL = {
				COMP = "COMPONENT_SHOTGUN_DOUBLEBARREL_BARREL_LONG"
			},
			WRAP = {
				COMP = "COMPONENT_SHOTGUN_DOUBLEBARREL_WRAP6",
                TINT = "COMPONENT_LONGARM_WRAP_TINT_B_8",
			},
		},
	},
	[27] = {
		item = "WEAPON_RIFLE_SPRINGFIELD",
    	label = "Pusca Springfield Politie",
   	 	desc = "Este pusca standard a armatei !",
		type = "weapon",
    	price = 50.0,
		grade = 7,
		components = {
			SCOPE = {
            	COMP = "COMPONENT_RIFLE_SCOPE03",
				MATERIAL = "COMPONENT_LONGARM_SIGHT_MATERIAL_3",
            },
			WRAP = {
				COMP = "COMPONENT_RIFLE_SPRINGFIELD_WRAP6",
				MATERIAL = "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER",
                TINT = "COMPONENT_LONGARM_WRAP_TINT_B_8",
			},
			GRIP = {
				COMP = "COMPONENT_RIFLE_SPRINGFIELD_GRIP_ENGRAVED",
				MATERIAL = "COMPONENT_LONGARM_GRIP_MATERIAL_BURLED",
				TINT = "COMPONENT_LONGARM_GRIPSTOCK_TINT_GUTTAPERCHA",
			}
		},
	},
	[28] = {
		item = "WEAPON_RIFLE_BOLTACTION",
    	label = "Pusca BoltAction Politie",
   	 	desc = "Este pusca de elita a politiei !",
		type = "weapon",
    	price = 80.0,
		grade = 7,
		components = {
			SCOPE = {
            	COMP = "COMPONENT_RIFLE_SCOPE03",
				MATERIAL = "COMPONENT_LONGARM_SIGHT_MATERIAL_3",
            },
			WRAP = {
				COMP = "COMPONENT_RIFLE_BOLTACTION_WRAP6",
				MATERIAL = "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER",
                TINT = "COMPONENT_LONGARM_WRAP_TINT_B_8",
			},
			GRIP = {
				COMP = "COMPONENT_RIFLE_BOLTACTION_GRIP_ENGRAVED",
				MATERIAL = "COMPONENT_LONGARM_GRIP_MATERIAL_BURLED",
				TINT = "COMPONENT_LONGARM_GRIPSTOCK_TINT_GUTTAPERCHA",
			}
		},
	},
	[29] = {
		item = "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",
    	label = "Sniper Rollingblock",
    	desc = "Sniper Rollingblock",
		type = "weapon",
   	 	price = 5000,
		grade = 10,
		components = {
			BODY = {
            	ENGRAVE = "COMPONENT_LONGARM_FRAME_ENGRAVING_2",
				MATERIAL = "COMPONENT_LONGARM_FRAME_MATERIAL_7"
            },
			SCOPE = {
				COMP = "COMPONENT_RIFLE_SCOPE04",
				MATERIAL = "COMPONENT_LONGARM_SIGHT_MATERIAL_7",
			},
			BARREL = {
				MATERIAL = "COMPONENT_LONGARM_BARREL_MATERIAL_7"
			},
			WRAP = {
				COMP = "COMPONENT_RIFLE_ROLLINGBLOCK_WRAP6",
                TINT = "COMPONENT_LONGARM_WRAP_TINT_B_8",
				MATERIAL = "COMPONENT_LONGARM_WRAP_MATERIAL_LEATHER",
			},
			GRIP = {
				COMP = "COMPONENT_SNIPERRIFLE_ROLLINGBLOCK_GRIP_BURLED",
				TINT = "COMPONENT_LONGARM_GRIPSTOCK_TINT_PEARL",
				MATERIAL = "COMPONENT_LONGARM_GRIP_MATERIAL_BURLED"
			}
		},
	}        
},
----------------------------------------------------------------------------------------------------------------------------
    
Wagons = {
	[1] = {
		wagon = "gatchuck_2", -- WAGON MODEL
    	label = "Gatling Wagon", -- NAME FOR WAGON MODEL
		allowedGrade = 4, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	},
	[2] = {
		wagon = "policeWagongatling01x", -- WAGON MODEL
    	label = "Gatling Wagon 2", -- NAME FOR WAGON MODEL
		allowedGrade = 4, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	},
	[3] = {
		wagon = "ArmySupplyWagon", -- WAGON MODEL (ONLY THIS MODEL HAVE PERSONAL INVENTORY!)
    	label = "Army Supply Wagon", -- NAME FOR WAGON MODEL
		allowedGrade = 1, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	},
	[4] = {
		wagon = "wagonarmoured01x", -- WAGON MODEL
    	label = "Armoured Wagon", -- NAME FOR WAGON MODEL
		allowedGrade = 2, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	},
	[5] = {
		wagon = "wagonPrison01x", -- WAGON MODEL (ONLY FOR THIS MODEL YOU CAN JAIL A PERSON)
    	label = "Prison Wagon", -- NAME FOR WAGON MODEL
		allowedGrade = 3, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	},
	[6] = {
		wagon = "warwagon2", -- WAGON MODEL (ONLY FOR THIS MODEL YOU CAN JAIL A PERSON)
    	label = "War Wagon", -- NAME FOR WAGON MODEL
		allowedGrade = 3, -- THE FIRST GRADE WHO SPAWN THIS wAGON
	}        
},
----------------------------------------------------------------------------------------------------------------------------
    
Text = { -- TRANSLATE
["pol_ondutycmd"] = "polonduty",
["pol_button"] = "PRESS",
["pol_ondutybutton"] = "ON-DUTY",
["pol_offdutybutton"] = "OFF-DUTY",
["pol_itemsbutton"] = "POLICE MENU",
["pol_parkwagonbutton"] = "PARK WAGON",
["pol_openwagonstash"] = "OPEN INVENTORY",
["pol_usejailcart"] = "WAGON PRISON",
["pol_ondutynotif"] = "You started your duty as a Police Officer! Stay on duty to receive payments and be carefull!",
["pol_offdutynotif"] = "You are not on duty as Police! You are in your free time and don't receive payments!",
["pol_notyourcity"] = "You are not a Police in this city!",
["pol_cartinzone"] = "Is allready a cart in zone, clear the area before taking out another one!",
["pol_cartspawned"] = "You have spawned",
["pol_confirm"] = "Confirma",
["pol_descbuyitems"] = "Buy items you need to do your job!",
["pol_menutitle"] = "Police Menu",
["pol_submenutitle"] = "YOUR SERVER NAME",
["pol_buymenu"] = "Take Items",
["pol_spawnwagons"] = "Spawn Wagon",
["pol_inventory"] = "Police Inventory",
["pol_employplayer"] = "Employ Players",
["pol_policelist"] = "Police List",
["pol_openarchives"] = "Open Archives",
["pol_changeclothes"] = "Change Clothes",
["pol_descbuymenu"] = "Buy items required to do your job!",
["pol_descspawnwagons"] = "Spawn Wagon if you need to go somewhere fast!",
["pol_descinventory"] = "Open Cabinet Inventory",
["pol_descemployplayer"] = "Employ Players!",
["pol_descpolicelist"] = "See Officers!",
["pol_descopenarchives"] = "Read the archives!",
["pol_descchangeclothes"] = "Take your outfit to fit as a police officer!",
["pol_info"] = "PROVIDE INFORMATIONS",
["pol_id"] = "ID",
["pol_job"] = "JOB",
["pol_grade"] = "GRADE ",
["pol_wrong"] = "Wrong Inputs",
["pol_descmedlist"] = "Show Police List",
["pol_fire"] = "Fire",
["pol_promote"] = "Promote",
["pol_nograde"] = "You don't have job grade to do this action !",
["pol_yourec"] = "You received",
["pol_dollar"] = "$",
["pol_payment"] = "for your work done, keep it like this!",
["pol_youbuyed"] = "You buyed",
["pol_andpayed"] = "and payed ",
["pol_nomoney"] = "You don't have enough money to buy this!",
["pol_fullinventory"] = "Your inventory is full, can't receive anymore items of this kind!",
["pol_allowedgr"] = "Allowed Grade: ",
["pol_playerwith"] = "Player with ID",
["pol_havenow"] = " have now",
["pol_withjob"] = " with job grade",
["pol_youreceivedjob"] = "You received the job",
["pol_gradereceived"] = "with grade",
["pol_youfired"] = "You fired this police officer, now he will not have any acces!",
["pol_promotedto"] = "This officer was promoted to a higher grade!",
["pol_playernotfound"] = "Player is not online!",
["pol_stash"] = "POLICE STASH",
["pol_noplayernearby"] = "No player nearby!",
["pol_noplayerdeadnearby"] = "No player dead nearby!",
["pol_notdetective"] = "You don't know how to use this, you're not a detective!",
["pol_handcuffed"] = "You were handcuffed!",
["pol_youhandcuffed"] = "You handcuffed a person!",
["pol_uncuffed"] = "You were uncuffed",
["pol_youuncuffed"] = "You uncuffed a person!",
["pol_wagonstash"] = "Wagon Stash",
["pol_playerinwagon"] = "You were put in the prison wagon!",
["pol_playernotinwagon"] = "You have been released from the prison wagon!",
["pol_nolockpick"] = "You don't have a lockpick in your inventory!",
["pol_gunfire"] = "A person heard gunshots in the area",
["pol_alertnpc"] = "A civilian heard gun shots and he's running now to alert the sheriffs!",
["pol_civalert"] = "A witness alerted the sheriffs about the shootings!",
["pol_civnotalert"] = "The witness is dead, can't alert the sherrifs!",
["pol_lockpickbroke"] = "You broke the lockpick!",
["pol_blipfirealert"] = "Fire Alert",
["pol_nothandcuffed"] = "The player is not handcuffed !",
["sd_zonealert"] = "A civilian was seen selling drugs in this area !",
["sd_drugalertbl"] = "DRUG ALLERT",
["WOLF KILL"] = "The person was attacked by a WOLF!",
["SNAKE BITE"] = "The person was bitten by a SNAKE!",
["FEROCIOUS ANIMAL"] = "The person was attacked by a FEROCIOUS ANIMAL!",
["BEAR KILL"] = "The person was attacked by a BEAR!",
["CROCODILE BITE"] = "The person was attacked by a CROCODILE!",
["BOWS"] = "The person was attacked with BOW, it has ARROW MARKS!",
["UNARMED"] = "The person was BEATEN or STRANGLED!",
["BURNED"] = "The person has SEVERE BURN MARKS!",
["FALLING"] = "The person hit himself, he has marks from a crash!",
["VEHICLES"] = "The person was hit by a CART!",
["HORSES"] = "The person was seriously hit by a HORSE!",
["GATLING GUN"] = "The person was injured with a Gatling Gun",
["TURRET"] = "The person was injured with a Turret",
["CANNON"] = "The person was injured with a Canon",
["OTHERREASON"] = "The person was injured for other reasons",
["KNIFE"] = "The person was stabbed with a KNIFE!",
["KNIFE CIVIL WAR"] = "The person was stabbed with a KNIFE CIVIL WAR!",
["KNIFE MINER"] = "The person was stabbed with a KNIFE MINER!",
["KNIFE JAWBONE"] = "The person was stabbed with a KNIFE JAWBONE!",
["KNIFE VAMPIRE"] = "The person was stabbed with a KNIFE VAMPIRE!",
["KNIFE JOHN"] = "The person was stabbed with a KNIFE JOHN!",
["KNIFE BEAR"] = "The person was stabbed with a KNIFE BEAR!",
["KNIFE HORROR"] = "The person was stabbed with a KNIFE HORROR!",
["KNIFE RUSTIC"] = "The person was stabbed with a KNIFE RUSTIC!",
["KNIFE TRADER"] = "The person was stabbed with a KNIFE TRADER!",
["HATCHET"] = "The person was stabbed with a HATCHET!",
["ANCIENT HATCHET"] = "The person was stabbed with a ANCIENT HATCHET!",
["HATCHET HUNTER"] = "The person was stabbed with a HATCHET HUNTER!",
["HATCHET DOUBLE BIT RUSTED"] = "The person was stabbed with a HATCHET DOUBLE BIT RUSTED!",
["HATCHET DOUBLE BIT"] = "The person was stabbed with a HATCHET DOUBLE BIT!",
["HATCHET HEWING"] = "The person was stabbed with a HATCHET HEWING!",
["HATCHET VIKING"] = "The person was stabbed with a HATCHET VIKING!",
["HATCHET HUNTER RUSTED"] = "The person was stabbed with a HATCHET HUNTER RUSTED!",
["CLEAVER"] = "The person was stabbed with a CLEAVER!",
["MACHETE"] = "The person was stabbed with a MACHETE!",
["MACHETE COLLECTOR"] = "The person was stabbed with a MACHETE COLLECTOR!",
["MACHETE HORROR"] = "The person was stabbed with a MACHETE!",
["REVOLVER SCHOFIELD"] = "The person was shot with a REVOLVER SCHOFIELD!",
["REVOLVER SCHOFIELD CALLOWAY"] = "The person was shot with a REVOLVER SCHOFIELD CALLOWAY!",
["REVOLVER LEMAT"] = "The person was shot with a REVOLVER LEMAT!",
["REVOLVER DOUBLEACTION"] = "The person was shot with a REVOLVER DOUBLEACTION!",
["REVOLVER CATTLEMAN"] = "The person was shot with a REVOLVER CATTLEMAN!",
["REVOLVER CATTLEMAN MEXICAN"] = "The person was shot with a REVOLVER CATTLEMAN MEXICAN!",
["REVOLVER CATTLEMAN JOHN"] = "The person was shot with a REVOLVER CATTLEMAN JOHN!",
["REVOLVER DOUBLEACTION GAMBLER"] = "The person was shot with a REVOLVER DOUBLEACTION GAMBLER!",
["REVOLVER NAVY"] = "The person was shot with a REVOLVER NAVY!",
["REVOLVER NAVY CROSSOVER"] = "The person was shot with a REVOLVER NAVY CROSSOVER!",
["PISTOL VOLCANIC"] = "The person was shot with a PISTOL VOLCANIC!",
["PISTOL SEMIAUTO"] = "The person was shot with a PISTOL SEMIAUTO!",
["PISTOL MAUSER"] = "The person was shot with a PISTOL MAUSER!",
["PISTOL M1899"] = "The person was shot with a PISTOL M1899!",
["PISTOL MAUSER"] = "The person was shot with a PISTOL MAUSER!",
["SNIPERRIFLE CARCANO"] = "The person was shot with a SNIPERRIFLE CARCANO!",
["SNIPERRIFLE ROLLINGBLOCK"] = "The person was shot with a SNIPERRIFLE ROLLINGBLOCK!",
["RIFLE SPRINGFIELD"] = "The person was shot with a RIFLE SPRINGFIELD!",
["RIFLE VARMINT"] = "The person was shot with a RIFLE VARMINT!",
["RIFLE BOLTACTION"] = "The person was shot with a RIFLE BOLTACTION!",
["RIFLE ELEPHANT"] = "The person was shot with a RIFLE ELEPHANT!",
["REPEATER HENRY"] = "The person was shot with a REPEATER HENRY!",
["REPEATER CARBINE"] = "The person was shot with a REPEATER CARBINE!",
["REPEATER EVANS"] = "The person was shot with a REPEATER EVANS!",
["REPEATER WINCHESTER"] = "The person was shot with a REPEATER WINCHESTER!",
["SHOTGUN PUMP"] = "The person was shot with a SHOTGUN PUMP!",
["SHOTGUN DOUBLEBARREL"] = "The person was shot with a SHOTGUN DOUBLEBARREL!",
["SHOTGUN SEMIAUTO"] = "The person was shot with a SHOTGUN SEMIAUTO!",
["SHOTGUN SAWEDOFF"] = "The person was shot with a SHOTGUN SAWEDOFF!",
["SHOTGUN DOUBLEBARREL"] = "The person was shot with a SHOTGUN DOUBLEBARREL!",
["SHOTGUN REPEATING"] = "The person was shot with a SHOTGUN REPEATING!",
["THROWING KNIVES"] = "The person was shot with a THROWING KNIVES!",
["TOMAHAWK"] = "The person was injured with a TOMAHAWK!",
["TOMAHAWK ANCIENT"] = "The person was injured with a TOMAHAWK ANCIENT!",
["MOLOTOV"] = "The person was injured with a MOLOTOV!",
["DYNAMITE"] = "The person was injured with a DYNAMITE!",
["FISHINGROD"] = "The person was injured with a FISHINGROD!",
["LASSO"] = "The person was injured with a LASSO!",
["TORCH"] = "The person was injured with a TORCH!",
["OBJECT"] = "The person was injured with a OBJECT!",
["LANTERN ELECTRIC"] = "The person was injured with a LANTERN ELECTRIC!",
["MOONSHINEJUG"] = "The person was injured with a MOONSHINEJUG!",
["HAMMER"] = "The person was injured with a HAMMER!",
["POISON BOTTLE"] = "The person was injured with a POISON BOTTLE!",
["webh_havenow"] = "have now job",
["webh_witjobg"] = "with job grade",
["webh_set"] = "SET",
["webh_buyed"] = "buyed",
["webh_payed"] = "and payed",
["webh_dead"] = "DEAD",
["webh_deadcoords"] = "DEAD COORDS:",
["webh_killedby"] = "was killed by",
["notify_bankheist"] = "BANK HEIST !",
["webh_shootin"] = "shoots in the City",
["webh_shootcoords"] = "SHOOT COORDS:",
["pol_ran"] = "RANK:",
["pol_missions"] = "Police Missions",
["pol_descmissions"] = "Choose / Finish a mission",
["paymentsyn_nomoney"] = "There's no money in POLICE ledger for pay your salary !",
["pol_nojob"] = "You don't have the required job to use this action !",
["pol_escorted"] = "You are / was escorted by a police officer !",
["pol_escort"] = "You escort / escorted a person !",
["pol_player"] = "Player",
["webh_onDuty"] = "is onDuty !",
["webh_offDuty"] = "is offDuty !",   
["webh_gitems"] = "Put items",
["webh_pitems"] = "Get items",
["wag_putin"] = "Put In",
["wag_getout"] = "Get Out",
["pol_plinwagpris"] = "You have put a person in wagon prison !",
["pol_poutwagpris"] = "You get out a person from wagon prison !",
["tittle_notification"] = "Police Job",
["pol_searchbutton"] = "Search Player",
["pol_subbutsearch"] = "Handcuffed",        
["pol_searchmoney"] = "Money:",
["pol_searchgold"] = "Gold:",
["pol_gold"] = "💰",
["pol_goldnot"] = "GOLD !",
["pol_moneydesc"] = "Take money from this player !",
["pol_golddesc"] = "Take gold from this player !",
["pol_searchinv"] = "Search Inventory",
["pol_searchinvdesc"] = "Search this player inventory !",
["pol_playerid"] = "Player ID:",
["pol_submenusearch"] = "Choose what do you wanna do !",
["pol_nomoney"] = "This player don't have this sum of money !",
["pol_nogold"] = "This player don't have this gold quantity !",
["pol_headermoney"] = "TAKE MONEY:",
["pol_headergold"] = "TAKE GOLD:",        
["pol_rowmoney"] = "Type Qty:",
["pol_moneytaken"] = "You take from this player",
["pol_moneytook"] = "This player took from you",
["pol_nameplayerinv"] = "PLAYER INVENTORY",
["pol_blacklistitems"] = "Can't take this item, is in the blacklist !",
["pol_noitemsinv"] = "Can't carry more items, don't have place in inventory !",
["pol_nowepinv"] = "Can't carry more weapons, don't have place in inventory !",
["pol_giveitemto"] = "You transfered",
["pol_tookfrom"] = "You took from this player",
["webh_took"] = "took",
["webh_victim"] = "Victim:",
["webh_steamname"] = "SteamName:",
["webh_puton"] = "transfered",
["pol_nosetjob"] = "You can't set this type of job !",
["pol_noqty"] = "You can't buy something if you select this quantity ! (Don't try to cheat)",
["pol_weaponlimit"] = "You can buy only one weapon at once !",
        
["pol_playercuffDead"] = "You cannot handcuff the player as long as he is dead !",
["pol_stealtownbanned"] = "You have no right to rob people in this city !",
["pol_inventory2"] = "Seized Inventory",
["pol_descinventory"] = "Open Seized Inventory",
["pol_nrmenutitle"] = "OnDuty Police:",
["pol_sectionaccount"] = "Money",
["pol_sectionaccountdesc"] = "Confiscated Money",
["pol_depositmoney"] = "Deposit Money",
["pol_depositmoneydesc"] = "Deposit Confiscated Money",
["pol_withdrawmoney"] = "Withdraw Money",
["pol_withdrawmoneydesc"] = "Withdraw Money from this section !",
["pol_Name"] = "Name:",
["pol_depositrow"] = "Deposit:",
["pol_nomoneytodepo"] = "You don't have enough money to deposit",
["pol_nopolmoneywth"] = "This section don't have this sum of money to withdraw",
["pol_depositedmoney"] = "You deposited the amount of",
["pol_withdrawedmoney"] = "You withdrew from the section the amount of",
["webh_depositedmoney"] = "deposited amount of",
["webh_withdrawedmoney"] = "withdrawed amount of",
["pol_promoGrade"] = "You do not have the possibility to promote / hire someone at the same grade as you or above !",
["pol_promYourself"] = "Do you want to promote yourself? Who gave you permission to do this ?",
["pol_hireYourself"] = "Do you want to change your job alone? Who gave you permission to do this ?",
["pol_wepserial"] = "POLICE",
["med_head"] = "Head",
["med_neck"] = "Neck",
["med_spine"] = "Spine",
["med_upbody"] = "Upper Body",
["med_lowerbody"] = "Lower Body",
["med_leftarm"] = "Left Arm",
["med_leftleg"] = "left Leg",
["med_rightarm"] = "Right Arm",
["med_rightleg"] = "Right Leg",
["med_unkownzone"] = "Unknown Bodypart",
["pol_openregistry"] = "Registry",
["pol_descregistry"] = "Open in / out register",
["metadata_durability"] = "Durability:",
	},
}