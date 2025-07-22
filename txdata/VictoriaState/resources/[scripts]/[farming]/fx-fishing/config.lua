Config = {}
Config.Language = "en"
Config.Webhook = {
    url = "https://discord.com/api/webhooks/1339219399890174003/cJhnsJKemnRhm585t3gmih7FSr5kl1rtedpPqeOvO2KQ7SGGAtB6TbcurnI5ecdtdsqb", --- Logs the fish caught by players and the fishing rods they develop
    logo = "https://upload.fixitfy.com.tr/images/FIXITFY-rXjTlukjzN.png",
    banner = "https://upload.fixitfy.com.tr/images/FIXITFY-EHVJlHZaMJ.png",
}

Config.Mode = "minigame" -- minigame // none fx-minigame Readme.md
Config.FishingrodMovement = false ---- Turning the fishing rod left and right when the fish comes
Config.RemoveBaitOnFailed = false ---- If true, the bait will disappear when the fish escapes, if false, it will not disappear
Config.ShowFishWhenUseFish = true -- or false
Config.Locale = {
    ["en"] = {
    ["you_are_busy"] = "Du bist beschäftigt!",
    ["eventActivated"] = "Das ${value}x-Fisch-Event ist aktiv, du bekommst mehr Fische!",
    ["you_need_upgrade_fishingrod"] = "Du kannst deine Angelrute aufleveln!",
    ["use_fishingrod"] = "15 Sekunden Zeit, um die Angelrute zu wählen, deren Verzauberung du ändern möchtest!",
    ["use_fishingrod2"] = "15 Sekunden Zeit, um die Angelrute zu wählen, die du verbessern möchtest!",
    ["leveled_up"] = "Deine Angelrute hat ein Level aufgestiegen! Du kannst zum Schmied gehen und sie verbessern.",
    ["upgrade"] = "Verbessern",
    ["start_fishing"] = "Angeln",
    ["use_bait"] = "Köder verwenden",
    ["cancel"] = "Abbrechen",
    ["blacksmith"] = "Schmied",
    ["goblacksmith"] = "Geh zuerst zum Schmied!",
    ["selectupgraderod"] = "Wähle innerhalb von 15 Sekunden die Angelrute, die du aufwerten möchtest!",
    ["selecetupgradeitem"] = "Wähle innerhalb von 15 Sekunden das Aufwertungsitem, das du verwenden möchtest!",
    ["nobait"] = "Kein Köder in deiner Tasche!",
    ["upgradesuccess"] = "Upgrade erfolgreich!",
    ["successfish"] = "Du hast den ${fishName} gefangen und ${xp}xp erhalten!",
    ["you_are_not_in_area"] = "Du bist nicht in der Angelzone!",
    ["fishing_failed"] = "Du hast den Fisch nicht gefangen!",
    ["upgrade_failed"] = "Upgrade fehlgeschlagen!",
    ["you_dont_have_a_items"] = "Dir fehlen die benötigten Gegenstände!",
    ["fishingrod_max"] = "Diese Angelrute ist bereits auf Maximum!",
    ["need_first_xp"] = "Du musst zuerst Erfahrungspunkte sammeln.",
    ["fishingrod_description"] = "Aktuelles Level ${currentLevel}</br>XP : ${currentXP}/${neededXP}</br> Fangchance großer Fische +${bigFishLuck}%</br> Fangchance wertvoller Fische +${worthyFishLuck}%",
    ["nojob"] = "Du hast keinen Job!",
    ["minigame_hook"] = "EINHAKEN!",
    ["minigame_success"] = "ERFOLGREICH",
    ["minigame_fail"] = "FEHLGESCHLAGEN",
    ["minigame_got_away2"] = "ENTKOMMEN",
    ["minigame_fish_on"] = "FISCH AM HAKEN!",
    ["minigame_too_soon"] = "ZU FRÜH!",
    ["minigame_controls_reel"] = "Einholen/Einhaken!",
    ["minigame_controls_exit"] = "Angeln beenden!",
    ["notadmin"] = "Du bist kein Admin!",
    ["error_invalid_rod"] = "Erfahrung konnte nicht vergeben werden. Ungültige Aktion, verwende die Angelrute erneut!",
    ["efsunsuccess"] = "Die Efsun war erfolgreich. ~COLOR_YELLOW~${bigchance}% ~COLOR_WHITE~Chance auf große Fische und ~COLOR_YELLOW~${smallchance}% ~COLOR_WHITE~Chance auf kleine Fische!"
    }
}

--[[
If the chance is less than 50%, it is very unlikely.
    maximum 50% chance for +1 fishing line
    maximum 60% chance for +2 rods
    maximum 70% chance for +3 rods
    and so on.
]]
Config.AdminFishingRodCommand = "adminfishingrod" 
Config.AdminFishingRodLvl = 9 -- Gives the Admin the specified level fishing rod with full experience
Config.EfsunItem = "efsun"
Config.Fishingrod = "fishingrod"
Config.FishBait = "fishbait"
Config.FishData = {
    {
        model = "A_C_FISHBLUEGIL_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 5,
        luck = 70,
    },
    {
        model = "A_C_FISHBLUEGIL_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 4,
        luck = 80,
    },
    {
        model = "A_C_FISHCHANNELCATFISH_01_XL",
        bigFish = true,
        worthyFish = false,
        xpCount = 45,
        luck = 5,
    },
    {
        model = "A_C_FISHBULLHEADCAT_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 4,
        luck = 80,
    },
    {
        model = "A_C_FISHBULLHEADCAT_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 5,
        luck = 70,
    },
    {
        model = "A_C_FISHCHAINPICKEREL_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 6,
        luck = 65,
    },
    {
        model = "A_C_FISHCHAINPICKEREL_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 6,
        luck = 85,
    },
    {
        model = "A_C_FISHLARGEMOUTHBASS_01_LG",
        bigFish = false,
        worthyFish = true,
        xpCount = 20,
        luck = 20,
    },
    {
        model = "A_C_FISHLAKESTURGEON_01_LG",
        bigFish = true,
        worthyFish = false,
        xpCount = 65,
        luck = 2,
    },
    {
        model = "A_C_FISHLARGEMOUTHBASS_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 5,
        luck = 75,
    },
    {
        model = "A_C_FISHLONGNOSEGAR_01_LG",
        bigFish = true,
        worthyFish = false,
        xpCount = 45,
        luck = 5,
    },
    {
        model = "A_C_FISHNORTHERNPIKE_01_LG",
        bigFish = true,
        worthyFish = false,
        xpCount = 60,
        luck = 3,
    },
    {
        model = "A_C_FISHPERCH_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 7,
        luck = 60,
    },
    {
        model = "A_C_FISHPERCH_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 2,
        luck = 90,
    },
    {
        model = "A_C_FISHREDFINPICKEREL_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 6,
        luck = 65,
    },
    {
        model = "A_C_FISHREDFINPICKEREL_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 3,
        luck = 85,
    },
    {
        model = "A_C_FISHROCKBASS_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 4,
        luck = 75,
    },
    {
        model = "A_C_FISHROCKBASS_01_SM",
        bigFish = false,
        worthyFish = true,
        xpCount = 3,
        luck = 85,
    },
    {
        model = "A_C_FISHSALMONSOCKEYE_01_LG",
        bigFish = true,
        worthyFish = false,
        xpCount = 50,
        luck = 5,
    },
    {
        model = "A_C_FISHSALMONSOCKEYE_01_ML",
        bigFish = true,
        worthyFish = false,
        xpCount = 40,
        luck = 10,
    },
    {
        model = "A_C_FISHSALMONSOCKEYE_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 10,
        luck = 40,
    },
    {
        model = "A_C_FISHSMALLMOUTHBASS_01_LG",
        bigFish = true,
        worthyFish = false,
        xpCount = 65,
        luck = 2,
    },
    {
        model = "A_C_FISHSMALLMOUTHBASS_01_MS",
        bigFish = false,
        worthyFish = true,
        xpCount = 9,
        luck = 55,
    },
}

Config.ItemNameByFishName = {
    -- ["modelname"] = "itemname"
    ["A_C_FISHBLUEGIL_01_MS"] = "a_c_fishbluegil_01_ms",
    ["A_C_FISHBLUEGIL_01_SM"] = "a_c_fishbluegil_01_sm",
    ["A_C_FISHCHANNELCATFISH_01_XL"] = "a_c_fishchannelcatfish_01_xl",
    ["A_C_FISHBULLHEADCAT_01_MS"] = "a_c_fishbullheadcat_01_ms",
    ["A_C_FISHBULLHEADCAT_01_SM"] = "a_c_fishbullheadcat_01_sm",
    ["A_C_FISHCHAINPICKEREL_01_MS"] = "a_c_fishchainpickerel_01_ms",
    ["A_C_FISHCHAINPICKEREL_01_SM"] = "a_c_fishchainpickerel_01_sm",
    ["A_C_FISHLARGEMOUTHBASS_01_LG"] = "a_c_fishlargemouthbass_01_lg",
    ["A_C_FISHLAKESTURGEON_01_LG"] = "a_c_fishlakesturgeon_01_lg",
    ["A_C_FISHLARGEMOUTHBASS_01_MS"] = "a_c_fishlargemouthbass_01_ms",
    ["A_C_FISHLONGNOSEGAR_01_LG"] = "a_c_fishlongnosegar_01_lg",
    ["A_C_FISHNORTHERNPIKE_01_LG"] = "a_c_fishnorthernpike_01_lg",
    ["A_C_FISHPERCH_01_MS"] = "a_c_fishperch_01_ms",
    ["A_C_FISHPERCH_01_SM"] = "a_c_fishperch_01_sm",
    ["A_C_FISHREDFINPICKEREL_01_MS"] = "a_c_fishredfinpickerel_01_ms",
    ["A_C_FISHREDFINPICKEREL_01_SM"] = "a_c_fishredfinpickerel_01_sm",
    ["A_C_FISHROCKBASS_01_MS"] = "a_c_fishrockbass_01_ms",
    ["A_C_FISHROCKBASS_01_SM"] = "a_c_fishrockbass_01_sm",
    ["A_C_FISHSALMONSOCKEYE_01_LG"] = "a_c_fishsalmonsockeye_01_lg",
    ["A_C_FISHSALMONSOCKEYE_01_ML"] = "a_c_fishsalmonsockeye_01_ml",
    ["A_C_FISHSALMONSOCKEYE_01_MS"] = "a_c_fishsalmonsockeye_01_ms",
    ["A_C_FISHSMALLMOUTHBASS_01_LG"] = "a_c_fishsmallmouthbass_01_lg",
    ["A_C_FISHSMALLMOUTHBASS_01_MS"] = "a_c_fishsmallmouthbass_01_ms",
}

Config.FishLabels = { -- 
    -- ["modelname"] = "label"
    ["A_C_FISHBLUEGIL_01_MS"] = "Blue Gil (Medium)",
    ["A_C_FISHBLUEGIL_01_SM"] = "Blue Gil (Small)",
    ["A_C_FISHCHANNELCATFISH_01_XL"] = "Channel Catfish (Extra Large)",
    ["A_C_FISHBULLHEADCAT_01_MS"] = "Bullhead Cat (Medium)",
    ["A_C_FISHBULLHEADCAT_01_SM"] = "Bullhead Cat (Small)",
    ["A_C_FISHCHAINPICKEREL_01_MS"] = "Chain Pickerel (Medium)",
    ["A_C_FISHCHAINPICKEREL_01_SM"] = "Chain Pickerel (Small)",
    ["A_C_FISHLARGEMOUTHBASS_01_LG"] = "Large Mouth Bass (Large)",
    ["A_C_FISHLAKESTURGEON_01_LG"] = "Lake Sturgeon (Large)",
    ["A_C_FISHLARGEMOUTHBASS_01_MS"] = "Large Mouth Bass (Medium)",
    ["A_C_FISHLONGNOSEGAR_01_LG"] = "Long Nose Gar (Large)",
    ["A_C_FISHNORTHERNPIKE_01_LG"] = "Northern Pike (Large)",
    ["A_C_FISHPERCH_01_MS"] = "Perch (Medium)",
    ["A_C_FISHPERCH_01_SM"] = "Perch (Small)",
    ["A_C_FISHREDFINPICKEREL_01_MS"] = "Red Fin Pickerel (Medium)",
    ["A_C_FISHREDFINPICKEREL_01_SM"] = "Red Fin Pickerel (Small)",
    ["A_C_FISHROCKBASS_01_MS"] = "Rock Bass (Medium)",
    ["A_C_FISHROCKBASS_01_SM"] = "Rock Bass (Small)",
    ["A_C_FISHSALMONSOCKEYE_01_LG"] = "Salmon Sockeye (Large)",
    ["A_C_FISHSALMONSOCKEYE_01_ML"] = "Salmon Sockeye (Medium-Large)",
    ["A_C_FISHSALMONSOCKEYE_01_MS"] = "Salmon Sockeye (Medium)",
    ["A_C_FISHSMALLMOUTHBASS_01_LG"] = "Small Mouth Bass (Large)",
    ["A_C_FISHSMALLMOUTHBASS_01_MS"] = "Small Mouth Bass (Medium)",
}

Config.Settings = {
    distance = 20,
    fishSpeed = 0.5,
    fishTimeout = 20, --second
}

Config.UpgradeNPCS = {
    ["blackwater"] = {
        model = "cs_charlessmith",
        pedscale = 1.6,
        coords = vector4(-871.62, -1393.830, 44.167, -74.335),
        prop = "p_forge01x", 
        propcoords = vector4(-870.807, -1392.7056, 42.526, 144.852), 
        ---- BLIP ---
        showblip = true,
        blipname = "Blacksmith",
        blipcoord = vector3(-871.62, -1393.830, 44.167),
        blipsprite = 2107754879,
        blipscale = 0.6,
        blipmodifier = "BLIP_MODIFIER_MP_COLOR_32",
        --------------
        jobrequireds = {
            ["sheriff"]= 0,
        }
    },
    ["valentine"] = {
        model = "cs_charlessmith",
        pedscale = 1.6,
        coords = vector4(-364.5, 802.8, 116.80, 120.2352),
        prop = "p_forge01x",
        propcoords = vector4(-365.031, 801.265, 115.161, 0.852), 
        ---- BLIP ---
        showblip = true,
        blipname = "Blacksmith",
        blipcoord = vector3(-364.5, 802.8, 116.80),
        blipsprite = 2107754879,
        blipscale = 0.6,
        blipmodifier = "BLIP_MODIFIER_MP_COLOR_32",
        --------------
        jobrequireds = false
    },
    ["rhodes"] = {
        model = "cs_charlessmith",
        pedscale = 1.6,
        coords = vector4(1316.7, -1325.698, 77.681, 80.0),
        prop = "p_forge01x",
        propcoords = vector4(1315.535, -1326.983, 76.054, -10.39),
        ---- BLIP ---
        showblip = true,
        blipname = "Blacksmith",
        blipcoord = vector3(1316.7, -1325.698, 77.681),
        blipsprite = 2107754879,
        blipscale = 0.6,
        blipmodifier = "BLIP_MODIFIER_MP_COLOR_32", 
        -------------
        jobrequireds = false
    },
}

Config.FishingRodLevel = {
    -- [level] = NeededXP,
    [1] = 1000,
    [2] = 2000,
    [3] = 3000,
    [4] = 4000,
    [5] = 5000,
    [6] = 6000,
    [7] = 7000,
    [8] = 8000,
    [9] = 9000,
}
Config.FishingRodUpgradeLucky = {
    --[currentLevel] = lucky (Less than 100 and must be an integer)
    [1] = 100,
    [2] = 95,
    [3] = 85,
    [4] = 75,
    [5] = 65,
    [6] = 35,
    [7] = 25,
    [8] = 10,
    [9] = 5,
}


Config.PearlLuckys = {
    ["whitepearl"] = 30,
    ["redpearl"] = 30,
    ["bluepearl"] = 30,
    ["goldpearl"] = 2,
}

Config.FishingRodUpgradeItems = {
    [1] = {
        {name="whitepearl",count=1},
        {name="redpearl",count=1},
    },
    [2] = {
        {name="redpearl",count=2},
        {name="bluepearl",count=2},
    },
    [3] = {
        {name="bluepearl",count=3},
        {name="whitepearl",count=3},
    },
    [4] = {
        {name="whitepearl",count=4},
        {name="redpearl",count=4},
    },
    [5] = {
        {name="redpearl",count=5},
        {name="bluepearl",count=5},
    },
    [6] = {
        {name="bluepearl",count=6},
        {name="goldpearl",count=1},
    },
    [7] = {
        {name="whitepearl",count=7},
        {name="goldpearl",count=2},
    },
    [8] = {
        {name="redpearl",count=8},
        {name="goldpearl",count=3},
    },
    [9] = {
        {name="bluepearl",count=10},
        {name="goldpearl",count=4},
    },
}

Config.UpgradeStones = {
    ["blessing_paper"] = {
        lucky = 0,
        drop_level_if_failed = true,
    },
    ["magical_metal"] = {
        lucky = 0,
        drop_level_if_failed = false,
    },
    ["rituel10"] = {
        lucky = 10,
        drop_level_if_failed = false,
    },
    ["rituel20"] = {
        lucky = 20,
        drop_level_if_failed = false,
    },
    ["rituel30"] = {
        lucky = 30,
        drop_level_if_failed = false,
    },
    ["rituel50"] = {
        lucky = 50,
        drop_level_if_failed = false,
    }
}
-- You can customize it here
function Notify(data)
  local text = data.text or "No message" 
  local time = data.time or 5000  
  local type = data.type or "info" 
  local dict = data.dict
  local icon = data.icon
  local color = data.color or 0
  local src = data.source

  if IsDuplicityVersion() then
      if Framework == "RSG" then
          TriggerClientEvent('ox_lib:notify', src, { title = text, type = type, duration = time })
      elseif Framework == "VORP" then
          if icon then
              TriggerClientEvent('vorp:ShowAdvancedRightNotification', src, text, dict, icon, color, time)
          else
              TriggerClientEvent("vorp:TipBottom",src, text, time, type)
          end
      end
  else
      if Framework == "RSG" then
          TriggerEvent('ox_lib:notify', { title = text, type = type, duration = time })
      elseif Framework == "VORP" then
          if icon then
              TriggerEvent("vorp:ShowAdvancedRightNotification", text, dict, icon, color, time)
          else
              TriggerEvent("vorp:TipBottom", text, time, type)
          end
      end
  end
end

function Locale(key, subs)
  local translate = Config.Locale[Config.Language][key] and Config.Locale[Config.Language][key] or "Config.Locale[" .. Config.Language .. "][" .. key .. "] doesn't exist"
  subs = subs and subs or {}
  for k, v in pairs(subs) do
      local templateToFind = '%${' .. k .. '}'
      local safeValue = tostring(v):gsub("%%", "%%%%")
      translate = translate:gsub(templateToFind, safeValue)
  end
  translate = tostring(translate):gsub("%%%%", "%%")
  return tostring(translate)
end


if IsDuplicityVersion() then -- NEW!
    RegisterCommand('fishEvent',function(source,args)
        if source == 0 then
            if tonumber(args[1]) > 0 then
                eventActions(tonumber(args[1]))
            else
                print("please enter valid variable (/fishEvent <number>)")
            end
        end
    end)
end

if not IsDuplicityVersion() then
    Config.InWater = function()
        local retval = true
        return retval
    end
    Config.FishingMiniGame = function(fishingRodLevel,callBack)
        if Config.Mode == "minigame" then
            fishingRodLevel = tonumber(fishingRodLevel)
            local minigameMode = "easy"
            -- if fishingRodLevel <= 3 then
            --     minigameMode = "hard"
            -- elseif fishingRodLevel <= 6 then
            --     minigameMode = "medium"
            -- elseif fishingRodLevel <= 9 then
            --     minigameMode = "easy"
            -- end
            local finished = exports["fx-fishing"]:fishingGameStart(minigameMode)
            callBack(finished) 
        else
            callBack(true)
        end
    end
end 

