-- Author '🅱🅻🆄🅴🆈🅴🆂#1364' by Sirec Studio -- 
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --

--[[ EXPORT TO GET INFO ABOUT MEDIC:

exports["SS-MedicJob"]:GetMedicONDUTY()
if you set local MEDIC = exports["SS-MedicJob"]:GetMedicONDUTY()
then "print("MEDIC: "..json.encode(MEDIC))" will result >> {"PlayeronDuty":true,"source":2,"nrMedicOnDuty":1,"myJob":"Medic"}
then you can use in other scripts if MEDIC.PlayeronDuty then ... to do something if is a medic on duty !]]

	Config = {

		WebhookAvatar = "https://i.imgur.com/OAE8DpR.png", -- Discord Avatar
		WebhookSetJob = "",
		WebhookItems = "",
		WebhookDead = "",
		WebhookDuty = "",
		WebhookStash = "",
		WebhookRevive = "",
			
		Registry = true, -- if you have SS-Registry !
		RepSystem = false, -- if you have SS-RepSystem !
		RepAdded = 10.0, -- 10.0 rep added when reach destination !
		MedicMissions = true, -- if you have SS-MedicMissions !
		Diseases = true, -- if you have SS-Diseases !
		MedicArchives = true, -- if you have SS-MedicArchives players will have to be discharged and will register what they do in archives !
		ClothingScript = false, -- If you have any clothing script you can trigger the menu (function have to be added in functions.lua) !
		RagDollFalling = true, -- RAGDOLL IF PLAYER FALL ?
		
		Key = 0xCEFD9220, -- Key to press
		Align = "right", -- Align for Menu
		AllowedJobs = {"medicval", "medicrhodes", "medicstrawb", "medicsd", "medicannes", "Medic", "Guvernator"}, -- Add what job's you want to do this job!
		NotAllowedDuty = {"Shaman"}, -- wich jobs will be allowed to only use kits but not allowed to receive notifications or to go onDuty !
		PoliceJob = {}, -- if have this job will receive a different notification with blip !
		FireMedic = "unemployed", -- Job received when a player is fired, the jobgrade is set to 0!
		JobGrade = 8, -- Job Grade allowed to employ/ fire players
		JobGradeBuy = 6, -- Job Grade allowed to buy medicine from cabinet
		UseCommand = true, -- Use command to set on duty!
		WagonInventory = 200, -- Set wagon inventory limit !
		DespawnWagonDist = 200, -- At what distance should the cart be wiped if the doctor moves away from it!
		----------------------------------------------------------------------------------------------------------------------------
		UsePayment = true, -- use payment !
		SynPayment = false, -- IF YOU USE SYN PAYMENT SET "doctor", IF YOU WANT TO USE SCRIPT PAYMENT PUT FALSE
		PaymentTime = 1800, -- 1800 seconds (30 minutes)
		PaymentGrade = {2.5, 3.0, 4.0, 5.0, 6.0, 7.0, 14.0, 20.0, 25.0, 35.0}, -- Payment on grades from 1 to 10!
		PayAlertAccepted = 5.0, -- Payment to receive when reach the alert destination !
		----------------------------------------------------------------------------------------------------------------------------
		UseNotify = true, -- If you want to receive doctor alerts !
		DelayNotify = 5000, -- (5 seconds) If you wan't to delay a little bit notifications, if not just set 1 !
		AlertDistance = 2500, -- (distance 2500) At what distance from the patient do the doctors receive the alert ?
		UseAlertCmd = true, -- True if you want to alert doctor also by command
		CmdDelay = 10, -- (seconds) Anti spam when a player use command !
		DeadBodyBlip = 350569997, -- When a player is dead, show you the blip on the map
		DeadPoliceBlip = -1154452417, -- When a police officer is dead, show you the blip on the map
		RemoveAlertItem = false, -- TRUE if you want to remove the item everytime a player die
		AlertItem = "birdalert", -- Item need to have in inventory if want to send notify to medic
		BirdModel = "a_c_pigeon", -- Bird Model to spawn when you die and have the AlertItem in your inventory
		ActivateMouse = 0x760A9C6F, -- (G) Key to press to activate the mouse when receive alert
		----------------------------------------------------------------------------------------------------------------------------
		BedTime = 10000, -- 10 seconds to stay in bed after registration
		BedScenario = "PROP_HUMAN_SLEEP_BED_PILLOW_RIGHT", -- Scenario when you register at cabinet office!
		RegisterPrice = 5, -- Price to heal/ revive!
		MedicDistance = 500, -- If is a medic in this range will announce medic when someone wan't to register !
		----------------------------------------------------------------------------------------------------------------------------
		Distance = 1.5, -- distance you can check a dead body/ heal or revive
		UseMetadata = true, -- if you wan't to use metadata for all kits !
		KitsDurability = 100, -- How much durability those kits should have !
		RemoveWhenUse = 20, -- How much durability to remove when you use a kit !
		MedicalKits = {
			["docverify"] = {label = "itemcheck", time = 10000, animDict = "mini_games@story@mob4@heal_jules@bandage@arthur", anim = "bandage_add_start", animDict2 = "mech_grapple@rifle@_male@_ambient@_healthy@front@_streamed", anim2 = "robbery_pocket_att"}, -- Item to use when check a dead body and if is alive to check if have any disease
			["docbandage"] = {label = "itemheal", time = 10000, animDict = "mech_grapple@rifle@_male@_ambient@_healthy@front@_streamed", anim = "robbery_pocket_att"}, -- Item to use when heal a nearby player
			["docanimalkit"] = {label = "animalwound", time = 10000, animDict = "mini_games@story@mob4@heal_jules@bandage@arthur", anim = "bandage_slow"}, -- Wolf, FerociousAnimal, Bear, Crocodile, Snake Bite
			["dochitkit"] = {label = "hitwound", time = 10000, animDict = "mini_games@story@mob4@heal_jules@bandage@arthur", anim = "bandage_slow"}, -- Falling, Vehicles, Horses, Unarmed, Melee, Bow
			["docweaponskit"] = {label = "weaponswound", time = 10000, animDict = "mini_games@story@mob4@heal_jules@bandage@arthur", anim = "bandage_slow"}, -- Shotgun, Rifle, One Hand Gun, Weapon Thrown, Gatling Gun, Turret, Cannon, Burned
			["docfirstaidkit"] = {label = "othercause", time = 10000, animDict = "mini_games@story@mob4@heal_jules@bandage@arthur", anim = "bandage_slow"}, -- Other cause
		},
		MedCabItem = "docbandage",
		----------------------------------------------------------------------------------------------------------------------------
			
		Doctors = {
			[1] = {
				Name = "Valentine Doctor", -- Doctor Name
				Pos = {-288.127, 804.810, 118.385, 275.109}, -- Position where players can come to heal, and blip position!
				ChangeDuty = {-290.130, 816.278, 118.385, 20.510}, -- Position where medic can be on-duty/ off-duty
				DocMenu = {-282.725, 817.417, 118.386, 302.820}, -- Position where medic can open the menu
				WagonPos = {-292.747, 828.574, 118.807, 268.404}, -- Position to spawn/ park the Wagon as a doctor
				BedCoords = {-282.460, 814.449, 118.915, 102.839}, -- Position to Teleport when register for heal, revive!
				Stash = 5000, -- stash for every medical section
				Zone = 5, -- If is a cart in this radius zone, you can't spawn another one!
				Wagon = "wagondoc01x", -- Type of Wagon for medic / false to disable !
				NpcRegistration = "u_m_m_valdoctor_01", -- Type of Npc Spawned at medical registration
				CityJob = {"detective", "Medic", "medicval", "Guvernator"}, -- City Job
				Showblip = true, -- Show medic blip
				Blip = -1739686743, -- Blip Type
				ParkDistance = 5.0, -- Distance to show the park button
				DutyDist = 1.5,
				Distance = 2.5 -- Distance for other buttons
			},
			[2] = {
				Name = "Strawberry Doctor", -- Doctor Name
				Pos = {-1806.121, -429.064, 157.833, 242.841}, -- Position where players can come to heal, and blip position!
				ChangeDuty = {-1802.102, -430.085, 157.830, 252.406}, -- Position where medic can be on-duty/ off-duty
				DocMenu = {-1803.010, -432.735, 157.829, 158.338}, -- Position where medic can open the menu
				WagonPos = {-1811.556, -440.358, 157.728, 77.872}, -- Position to spawn/ park the Wagon as a doctor
				BedCoords = {-1811.924, -367.381, 166.062, 119.211}, -- Position to Teleport when register for heal, revive!
				Stash = 5000, -- stash for every medical section
				Zone = 15, -- If is a cart in this radius zone, you can't spawn another one!
				Wagon = "wagondoc01x", -- Type of Wagon for medic
				NpcRegistration = "u_m_m_rhddoctor_01", -- Type of Npc Spawned at medical registration
				CityJob = {"detective", "Medic", "Guvernator"}, -- City Job
				Showblip = true, -- Show medic blip
				Blip = -1739686743, -- Blip Type
				ParkDistance = 5.0, -- Distance to show the park button
				DutyDist = 1.5,
				Distance = 2.5 -- Distance for other buttons
			},
			[3] = {
				Name = "Annesburg Doctor", -- Doctor Name
				Pos = {2948.771, 1331.894, 43.443, 18.525}, -- Position where players can come to heal, and blip position!
				ChangeDuty = {2945.294, 1331.280, 43.457, 50.812}, -- Position where medic can be on-duty/ off-duty
				DocMenu = {2944.819, 1329.140, 43.450138092042, 156.446}, -- Position where medic can open the menu
				WagonPos = {2940.475, 1336.598, 43.072, 344.743}, -- Position to spawn/ park the Wagon as a doctor
				BedCoords = {2946.518, 1328.501, 44.020, 69.134}, -- Position to Teleport when register for heal, revive!
				Stash = 5000, -- stash for every medical section
				Zone = 15, -- If is a cart in this radius zone, you can't spawn another one!
				Wagon = "wagondoc01x", -- Type of Wagon for medic
				NpcRegistration = "am_valentinedoctors_females_01", -- Type of Npc Spawned at medical registration
				CityJob = {"detective", "Medic", "Guvernator"}, -- City Job
				Showblip = true, -- Show medic blip
				Blip = -1739686743, -- Blip Type
				ParkDistance = 5.0, -- Distance to show the park button
				DutyDist = 1.5,
				Distance = 2.5 -- Distance for other buttons
			},
			[4] = {
				Name = "Saint Denis Doctor", -- Doctor Name
				Pos = {2728.021, -1232.084, 49.377, 98.955}, -- Position where players can come to heal, and blip position!
				ChangeDuty = {2733.895, -1230.552, 49.370, 291.401}, -- Position where medic can be on-duty/ off-duty
				DocMenu = {2730.557, -1229.218, 50.370, 3.295}, -- Position where medic can open the menu
				WagonPos = {2726.119, -1239.864, 48.907, 265.797}, -- Position to spawn/ park the Wagon as a doctor
				BedCoords = {2731.850, -1232.493, 50.169, 82.388}, -- Position to Teleport when register for heal, revive!
				Stash = 5000, -- stash for every medical section
				Zone = 5, -- If is a cart in this radius zone, you can't spawn another one!
				Wagon = "wagondoc01x", -- Type of Wagon for medic
				NpcRegistration = "cs_sddoctor_01", -- Type of Npc Spawned at medical registration
				CityJob = {"detective", "Medic", "Guvernator"}, -- City Job
				Showblip = true, -- Show medic blip
				Blip = -1739686743, -- Blip Type
				ParkDistance = 5.0, -- Distance to show the park button
				DutyDist = 1.5,
				Distance = 2.5 -- Distance for other buttons
			},
		},
		----------------------------------------------------------------------------------------------------------------------------
		Items = {
			[1] = {
				item = "docverify",
				label = "Verify Injury Kit",
				desc = "Take this kit to verify injured people!",
				price = 0.2
			},
			[2] = {
				item = "docbandage",
				label = "Heal Bandage",
					desc = "Bandage to heal players when they have low HP!",
				price = 0.3
			},
			[3] = {
				item = "docanimalkit",
				label = "Animals Medical Kit",
				desc = "Need to have it all time, a lot snakes in zone!",
					price = 0.5
			},
			[4] = {
				item = "dochitkit",
				label = "Hitted Medical Kit",
				desc = "Need this to treat hitted players after a hit!",
				price = 1.2
			},
			[5] = {
				item = "docweaponskit",
				label = "Shot Medical Kit",
				desc = "Need this to treat players after a shot!",
				price = 1.3
			},
			[6] = {
				item = "birdalert",
				label = "Bird Alert",
				desc = "Player need to have this with him to alert the doctor when is injured!",
				price = 1.7
			},
			[7] = {
				item = "docfirstaidkit",
				label = "First Aid Kit",
				desc = "Need this to treat players injured by many reasons!",
				price = 1.7
			}
		},
		----------------------------------------------------------------------------------------------------------------------------
			
		Text = { -- TRANSLATE
		["med_ondutycmd"] = "medonduty", -- command to go onDuty / offDuty !
		["cmdalert"] = "alertmedic", -- command if UseAlertCmd is true !
		["removeblip"] = "removeblip", -- command to remove blip !
		["med_button"] = "PRESS",
		["med_ondutybutton"] = "ON-DUTY",
		["med_offdutybutton"] = "OFF-DUTY",
		["med_docitemsbutton"] = "MEDICAL MENU",
		["med_parkwagonbutton"] = "PARK WAGON",
		["med_openwagonstash"] = "OPEN STASH", 
		["med_registrationbutton"] = "REGISTER HERE",
		["med_ondutynotif"] = "You started your duty as Doctor! Stay on duty to receive payments and take care of people!",
		["med_offdutynotif"] = "You are not on duty as Doctor! You are in your free time and don't receive payments!",
		["med_yourec"] = "You received",
		["med_dollar"] = "$",
		["med_payment"] = "for your work done, keep it like this!",
		["med_confirm"] = "Confirm",
		["med_descbuyitems"] = "Buy items you need to do your job!",
		["med_youbuyed"] = "You buyed",
		["med_andpayed"] = "and payed ",
		["med_fullinventory"] = "Your inventory is full, can't receive anymore items of this kind!",
		["med_nomoney"] = "You don't have enough money to buy this!",
		["med_menutitle"] = "ONDUTY:",
		["med_submenutitle"] = "Medic On Duty",
		["med_buymenu"] = "Take Medicine",
		["med_spawnwagons"] = "Spawn Wagon",
		["med_changeclothes"] = "Change Clothes",
		["med_inventory"] = "Open Inventory",
		["med_employplayer"] = "Employ Players",
		["med_mediclist"] = "Medic List",
		["med_descbuymenu"] = "Buy medicine required to do your job!",
		["med_descspawnwagons"] = "Spawn Wagon if you need to go somewhere fast!",
		["med_descchangeclothes"] = "Change your Clothes!",
		["med_descinventory"] = "Open Cabinet Inventory",
		["med_descemployplayer"] = "Employ Players!",
		["med_descfireplayer"] = "Fire Players!",
		["med_descmediclist"] = "See Medic!",
		["med_cartinzone"] = "Is allready a cart in zone, clear the area before taking out another one!",
		["med_cartspawned"] = "You have spawned a wagon for doctors!",
		["med_info"] = "PROVIDE INFORMATIONS",
		["med_id"] = "ID",
		["med_job"] = "JOB",
		["med_grade"] = "GRADE ",
		["med_wrong"] = "Wrong Inputs",
		["med_playerwith"] = "Player with ID",
		["med_havenow"] = " have now",
		["med_withjob"] = " with job grade",
		["med_nograde"] = "You don't have job grade to acces this menu!",
		["med_notyourcity"] = "You are not a Medic in this city!",
		["med_medlist"] = "Medic List",
		["med_descmedlist"] = "Show Medic List",
		["med_youreceivedjob"] = "You received the job",
		["med_gradereceived"] = "with grade",
		["med_youwfired"] = "You fired this medic, now he will not have any acces!",
		["med_deadplayerblip"] = "Dead Player",
		["med_medicalert"] = "The bird you had with you flew to a doctor to alert him, if no one respond you can respawn after time pass !",
		["med_playerisdead"] = "A player is injured, you received the alert and need to help him !",
		["med_noalertitem"] = "You can't alert the doctor!",
		["med_subtitledeadalert"] = "You are seriously injured, be patient and wait the doctor !",
		["med_registpayed"] = "You paid",
		["med_reghealed"] = "at the office to heal yourself!",
		["med_regnomoney"] = "You don't have enough money to register at this cabinet!",
		["med_complhealed"] = "You are healed now, take care of yourself!",
		["med_wagonstash"] = "Wagon Stash", 
		["med_notrightitem"] = "You can't use this item right now!",
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
		["WEAPON THROWN"] = "The person was hit by a THROWING WEAPON!",
		["SHOTGUNS"] = "The person was shot with a SHOTGUN, he has serious injuries.",
		["RIFLE"] = "The person was shot with a RIFLE, he has serious injuries.",
		["ONE-HANDGUN"] = "The person was shot with a HAND GUN, he has serious injuries.",
		["MELEE"] = "The person was stabbed with a melee, hatchet or axe.",
		["GATLING GUN"] = "The person was injured with a Gatling Gun.",
		["TURRET"] = "The person was injured with a Turret.",
		["CANNON"] = "The person was injured with a Canon.",
		["OTHERREASON"] = "The person was injured for other reasons.",
		["med_noplayerdeadnearby"] = "Is no player injured nearby!",
		["med_noplayernearby"] = "No player nearby!",
		["med_notmedic"] = "You are not a medic and you don't know how to use this!",
		["med_nowishealed"] = "The player is now healed!",
		["webh_havenow"] = "have now job",
		["webh_witjobg"] = "with job grade",
		["webh_set"] = "SET",
		["webh_buyed"] = "buyed",
		["webh_payed"] = "and payed",
		["webh_died"] = "DIED, and sent the alert to the doctor!",
		["webh_died1"] = "DIED, and the doctor was not alerted!",
		["med_fire"] = "Fire",
		["med_promote"] = "Promote",
		["med_promotedto"] = "The player has been promoted !",
		["med_demote"] = "Demote",
		["med_demotedto"] = "The player has been demoted !",
		["med_playernotfound"] = "The player was not found !",
		["paymentsyn_nomoney"] = "No money in ledger for payment", -- only with syn society !
		["webh_player"] = "Player",
		["webh_onDuty"] = "is onDuty !",
		["webh_offDuty"] = "is ofDuty !",
		["webh_pitems"] = "The player put in inventory",
		["webh_gitems"] = "The player took from inventory",
		["webh_medacc"] = "accepted to take this alert !",
		["med_nomedon"] = "NO MEDIC ONLINE !",
		["med_waitrespawn"] = "You have to wait 200 seconds to revive !",
		["med_missions"] = "Medic Missions",
		["med_descmissions"] = "Choose to start a mission !",
		["med_bar"] = "You're being healed ...",
		["med_docaccept"] = "Doctor have received your alert and is on his way to you!",
		["med_noaccept"] = "You didn't accepted to take this alert !",
		["med_deaddest"] = "You have reached the place from which you received the alert and received!",
		["med_noton"] = "This player is not anymore online !",
		["med_nosetjob"] = "You can't set this job !",
		["med_bannedzone"] = "You can't sent alert from this zone, doctors don't come here !",
		["med_bannedzone1"] = "Can't call doctor here !",
		["med_allreadyonmiss"] = "Someone else allready take this alert !",
		["med_nojob"] = "You don't have the job to do this !",
		["progr_check"] = "Check patient to see what's happen't !",
		["progr_heal"] = "You heal this patient ...",
		["progr_revive"] = "You revive this patient ...",
		["metadata_durability"] = "Durability:",
		["med_itemempty"] = "This kit is empty, you need to use another one to help this patient !",
		["med_waitformedic"] = "A doctor from the city was notified that you are at the office, he will come in the shortest time!",
		["med_requiremedic"] = "A patient is at the office",
		["med_requiremedic1"] = "and has requested medical care !",
		["med_requestmessage"] = "One player request your assistance in ",
		["med_nodisease"] = "This player is not infected with any disease !",
		["med_snakepoison"] = "This player is infected with snakepoison and must be treated as soon as possible !",
		["med_rabia"] = "This player is infected with rabia and must be treated as soon as possible !",
		["med_anthrax"] = "This player is infected with anthrax and must be treated as soon as possible !",
		["med_hepatisis"] = "This player is infected with hepatisis and must be treated as soon as possible !",
		["med_plague"] = "This player is infected with plague and must be treated as soon as possible !",
		["med_typhus"] = "This player is infected with typhus and must be treated as soon as possible !",
		["med_scarletfever"] = "This player is infected with scarletfever and must be treated as soon as possible !",
		["med_chlorine"] = "This player is infected with chlorine and must be treated as soon as possible !",
		["med_injuredzone"] = "He was wounded in",
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
		["wait_doctor"] = "Wait for the doctor to be discharged and to check what you have to heal !",
		["despawn_wagon"] = "You moved too far from the cart and it despawned !",
		["med_policeinjured"] = "A police officer is injured, you received the alert and need to help him !",
		["dead_officer"] = "Dead Officer",
		["med_wagallspawned"] = "You have allready a wagon spawned, park it before you wanna spawn a new one !",
		["med_openregistry"] = "Registry",
		["med_descregistry"] = "Open in / out register"
		},
			
		BlacklistZones = { -- in this zone players will not sent alert !
			"GaptoothRidge",
			"GuarmaD",
			"Guarma",
			"RioBravo",
			"ChollaSprings",
			"Cholla Springs",
			"HennigansStead",
			"Hennigans Stead"
			},
		}