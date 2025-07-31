-- Author 'SIREC' Discord Username !
-- REPORT ANY BUGS ON https://discord.gg/9XNBaQSmMd --
Config = {
    
Dev = true, -- USE ONLY ON TEST SERVER FOR CONFIGURATION & TESTS
    
Language = "DE", --CHOICE LANGUAGE (EN / DE / FR)

SSHousing = false, -- COOMING SOON !
SSPlayerShops = true,
WebHook = "https://discord.com/api/webhooks/1400475648807534750/3X1yVjNti5Emh6-8Mh-iqKLA08TF1B8Um5B3-3DH9Q6f-vrxmUjI09jAcAFdIKcpOr5v", -- FOR LOGS    
    
Align = "right", -- ALIGN MENU   
Button = "PRESS", -- BUTTON NAME
Key = 0xD9D0E1C0, -- KEY TO OPEN
ServerYear = "1898", -- YOUR SERVER PLAYABLE YEAR
    
DrinkItem = "water", -- THE DRINK FOR CANTEEN
FoodItem = "bread", -- THE FOOD FOR CANTEEN
    
BountyHunter = true, -- IF YOU HAVE SS-BOUNTYHUNTER YOU CAN ADD BOUNTY FROM SHERIFF ARCHIVE AND REMOVE IT
PayFromSheriff = true, -- true TAKE MONEY FROM SHERIFF WHEN ADD BOUNTY 
    
AllowedJobs = {"Guvernator", "marshal", "sheriff", "police"}, -- JOBS THAT CAN OPEN THE ARCHIVES
PropertyOnly = {"Primar"},
DeleteNotesGrade = 5, -- FROM WICH GRADE CAN DELETE NOTES ?
DeleteJobGrade = 9, -- FROM WICH GRADE CAN DELETE DOSSIER ?
SeizureProperty = 5, -- FROM WICH GRADE CAN SEIZURE PROPERTY ?
TransferProperty = 8, -- FROM WICH GRADE CAN TRANSFER PROPERTY  ?
    
AutoEject = true, -- EJECT CITIZENS IF THEY ENTER INTO PENITENTIARY ZONE !   
AutoTeleport = true, -- TELEPORT BACK IN PRISON IF PRISONER ESCAPE
AutoDoors = true, -- PUT true TO CLOSE ALL DOORS OF PENITENTIARY, 1 TIME HE WILL NOT CONFLICT WITH YOUR DOORLOCKS SCRIPT !    
NoteBook = "book", -- ITEM TO OPEN SHERIFF'S ARCHIVES
DossierItem = "cocoa", --DOSSIER ITEM TO GIVE TO OTHERS

ShowJailDossier = "showdossier", -- COMMAND SHOW DOSSIER WHEN JAILED #NEW
HideJailDossier = "hidedossier", -- COMMAND HIDE DOSSIER WHEN JAILED #NEW
TimeToCheckJail = 60000, --CHECK EXPIRED JAIL            
AutoJail = true, -- AUTOJAIL: IF true the POLICE can choice if do MANUAL JAIL or AUTO JAIL ! If false will be available only MANUAL JAIL !
ShowJailInfo = true, 
DrawText = {X = 0.03, Y = 0.02, W = 0.5, H = 0.5, R = 255, G = 255, B = 255, O = 255, F = 7}, -- X & Y = Screen Position, W & H = Font Size, R & G & B & O = RGB Color & Opecity, F = Font Style (1-20)
    
Offices = {     
    [1] = {
    	Name = "Blackwater Archive", -- NAME OF BLIP/BUTTON
		Pos = {-761.92901611328, -1266.8898925782, 44.050498962402, 170.40016174316}, -- POS FOR BLIP/MENU
		Blip = 587827268, -- false TO HIDE THE BLIP
    	Distance = 2.0, -- DISTANCE TO OPEN MENU                  
	}    
},
    
CropJob = {
    Name = "Work for the benefit of the Country", -- JOB NAME
    Angles = {vector2(3300.67, -593.41),vector2(3278.85, -596.57),vector2(3214.08, -554.26),vector2(3248.91, -501.93), vector2(3328.92, -552.39)}, -- DON'T TOUCH
    Zcoords = {35, 54}, -- DON'T TOUCH
    WorkBonus = 20, --SECONDS TO REMOVE FOR EVERY CROP JOB
    Money = false, --SET MONEY AMMOUNT TO GIVE FOR EVERY CROP / PUT false TO TURN IT OFF
	Debug = false, -- DEBUG ZONE ? TO SEE IT
    ReWorkDistance = 8.0, -- MAKE THE WORK HARD AND LOOSE MORE TIME BY EVERY CROP NEED GO X DISTANCE FAR FOR RE-WORK
    WaitCrop = 10000, --TIME TO WORK AND WAIT BEFORE REDUCING THE SENTENCE TIME
},
    
Jobs = {
	-- COOMING SOON 
},
    
Penintetiary = {
    Name = "Sisika Penitetiary", -- PENITENTIARY NAME
    Angles = {vector2(3386.60, -636.57),vector2(3410.79, -678.88),vector2(3369.20, -727.20),vector2(3329.68, -703.74), vector2(3315.48, -655.87)}, -- ANGLES OF ZONES
    Zcoords = {42, 54},
	Debug = true, -- DEBUG ZONE ? TO SEE IT
    Blip = -1489164512, -- PENITENTIARY BLIP / false TO HIDE    
	Pos = {3363.4689941406, -681.2964477539, 46.466829681396}, -- CENTER OF PENITENTIARY
    Canteen = {3334.93603515625, -658.6146850585938, 45.97416305541992, 281.05603027344}, -- CANTEEN MENU POSITION
    CanteenName = "Sisika Canteen", -- CANTEEN NAME    
    CanteenBlip = -1138864184, -- CANTEEN BLIP / false TO DISABLE    
    CanteenDistance = 2.0, -- CANTEEN DISTANCE
    Cells = {
            [1] = {3328.6863, -668.3199, 48.8897, 27.1767},
            [2] = {3327.9915 , -661.4512 , 48.8881, 89.6623},
            [3] = {3332.6626 , -667.0618 , 48.8896 , 197.2037},
            [4] = {3333.2444 , -659.8171 , 48.8896 , 26.3801},
            [5] = {3336.9790 , -666.5901 , 48.8897 , 181.3364},
            [6] = {3337.1565 , -658.8512 , 48.8917 , 12.6926},
            [7] = {3341.1169 , -665.6801 , 48.8897 , 278.9239},
            [8] = {3341.5369 , -657.7955 , 48.8924 , 7.8863}
        },
    JobPermit = {3380.7498 ,-659.0895 ,46.9061 ,28.9527, 45.64087295532226}, -- PLACE WHERE TO ASK PERMISSION TO GO OUT
    JobPermitName = "Job Permission",
    JobPermitBlip = 1109348405, -- false TO DISABLE
    ReleasePos = {2685.7255859375, -1454.185913086, 46.278060913086, 187.82933044434}, -- POSITION WHEN PRISONERS ARE RELEASED
    Range = 100, -- RANGE TO TP INSIDE IF ESCAPE
    NpcMenuModel = "s_m_m_ambientblwpolice_01", -- NPC 1 / false TO HIDE
    NpcMenu = {3353.7534179688, -641.92889404296, 44.29126739502, 13.36182308197}, -- POS NPC 1
    JailPos = {2926.742919921875, -1254.27099609375, 42.38059997558594}, -- POS WHERE TO PLAYER WILL BE JAILED IN MANUAL JAIL
    JailDistance = 10.0, -- FOR MANUAL JAIL / TO TAKE THEM
    SpawnBoat = {2949.8779296875, -1246.3270263671875, 40.50966644287109, -82.29}, -- BOAT FOR MANUAL JAIL
    BoatModel = "rowboat", -- MODE BOAT FOR MANUAL JAIL
    NpcGuardModel = "s_m_m_skpguard_01", -- NPC 2 & BOAT DRIVER
    NpcGuard = {3347.1630859375, -643.75970458984, 44.291255950928, 23.405473709106}, -- POS NPC
},
}

LAWS = {
 [1.1] = {tittle = "HEIST", law = "Who steal will be punished !"}
}

function ARCHIVESNOTIFY(text) --SET YOUR NOTIFYCATIONS
TriggerEvent("vorp:TipBottom", text, 5000)   
end 

function ADDFINES(source, charid, amount, tittle, description) -- SET YOUR BILLING SYSTEM OR ADD A DESTINATION OF THE MONEY
TriggerEvent("S!r@#Blu$$-SS-ARCHIVES:SERVER:SENDFINE", source, charid, amount)
end 