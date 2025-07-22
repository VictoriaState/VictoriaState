Config = {}
Config.Webhook = {
  url = "", -- Discord webhook channel
  logo = "https://upload.fixitfy.com.tr/images/FIXITFY-rXjTlukjzN.png",
  banner = "https://upload.fixitfy.com.tr/images/FIXITFY-EHVJlHZaMJ.png",
  color = 16775871
}
Config.Language = "en"
Config.Locale = {
  ["en"] = {
["requireditems"] = "Du benötigst ${count}x ${label}, um das Item herzustellen",
["startcraft"] = "Herstellung gestartet! Überprüfe den Herstellungsauftrag",
["error"] = "Ein Fehler ist aufgetreten!",
["takeitem"] = "${count}x ${item} wurde deinem Inventar hinzugefügt!",
["carry"] = "Du kannst nicht mehr tragen!",
["nojob"] = "Du hast nicht den erforderlichen Job, um das zu tun!",
["nolucky"] = "Die Herstellung des Items ist fehlgeschlagen!",
["promptlabel"] = "Herstellungsbuch",
["bookisclose"] = "Du kannst das Buch jetzt nicht öffnen! Du musst warten...",
["dont_have_perm"] = "Du hast keine Berechtigung, dieses Buch zu lesen!",
["orderfull"] = "Du kannst nicht mehr produzieren! Warte, bis deine anderen Aufträge fertig sind!",
["nostockforthisitem"] = "Von diesem Item kann nicht mehr hergestellt werden!",
["badluck"] = "Die Herstellung ist wegen Pech fehlgeschlagen. Das Item wurde verloren!",
["errorreqitems"] = "ID:${id} erfüllt die notwendigen Items nicht, versucht aber zu produzieren. Überprüfe den Spieler!",

  },
}

Config.Levels = {
  [1] = 1000,[2] = 2000,[3] = 3000,[4] = 4000,[5] = 5000,[6] = 6000,[7] = 7000,[8] = 8000,[9] = 9000,
}
Config.DefaultImage = "/ui/assets/img/craftman.png"

Config.OrderListLimit = 10 -- Set a limit on the players' order list
Config.pedSpawnDistance = 30 -- Adjust the spawn distance if you use peds
Config.ItemLimit = { -- Limit the maximum number of times an item can be crafted on the entire server in a restart. For example, players will only be able to produce 10 bandages in total. The stock will be replenished after the restart.
  ["bandage"] = 10,
}

--- NEW ---
Config.CraftSecurity = false --- If true, prevents data modified via nuidevtools from being modified.
Config.DropPlayerNuiCheater = false -- ## Cheaters who try to modify recipes and data through NuiDevtools. Set this to true if you want them to be kicked out of the game.

Config.HandCraftSettings = {
  handCraft = true, --If true, production enters animation and instantly crafts the item if the minimumCraftTime value is less than the specified seconds.
  minimumCraftTime = 5, -- Maximum production time required for manual production (If a product's production time is 61, it goes to the order list.)
}

Config.HideHud = function()
  if GetResourceState("fx-hud") == "started" then
      exports["fx-hud"]:hideHud()
  end
end

Config.ShowHud = function()
  if GetResourceState("fx-hud") == "started" then
      exports["fx-hud"]:showHud()
  end
end

Config.ItemCraftBooks = {
  ["craftbook"] = {
    bookImage = "/ui/assets/img/craftman.png",
    Jobs = false, -- or | Jobs = {["sheriff"]=0, ["sheriff2"] = 0},
    craftData = Craft.CraftItems
  },
  ["sheriffbook"] = {
    bookImage = "/ui/assets/img/craftman.png",
    Jobs = {["sheriff"]=0, ["sheriff2"] = 0}, -- or | Jobs = false,
    craftData = Craft.CraftItems
  },
}

Config.PropCraftBook = {
  ["p_campfire01x"] = {
    bookImage = "/ui/assets/img/craftman.png",
    Jobs = false, -- or | Jobs = {["sheriff"]=0, ["sheriff2"] = 0},
    craftData = Craft.CraftItems
  },
  ["p_campfire03x"] = {
    bookImage = "/ui/assets/img/craftman.png",
    Jobs = false, -- or | Jobs = {["sheriff"]=0, ["sheriff2"] = 0},
    craftData = Craft.CraftItems
  },
  ["p_tablecul01x"] = {
    bookImage = "/ui/assets/img/craftman.png",
    Jobs = false, -- or | Jobs = {["sheriff"]=0, ["sheriff2"] = 0},
    craftData = Craft.CraftItems
  },
}


-- This is the feature that allows you to access the craft book with these fixed coordinates.
Config.CraftBooks = {
  ["doctorbook"] = {
    bookID = "FX-1000",
    Settings = {
      image = "/ui/assets/img/craftman.png",
      joblocked = {["doctor"]=0}, -- Required Job or joblocked = false
      -- joblocked = false, -- Required Job or joblocked = false
      ped = true,
      model = "u_m_m_rhddoctor_01",
      coords = {
        vector4(-819.6582, -1328.5813, 43.7179, 184.6558),
      },
      promptitle = "Doctor Craft Book",
      distance = 2, -- Prompt visibility distance
      ---- PED SCENARIO AND ANİM ----
      pedScenario = "WORLD_HUMAN_WRITE_NOTEBOOK",            --## Ped scenario /You can add optionally. You can delete the code or turn it false
      anim = {                                                       --## Choose between scenarios or animation. Someone has to be false / You can add optionally. You can delete the code or turn it false
        animDict = '',                                                 --## Gives priority to scenario, if you set the scenarios to false, the anim will work. (pedScenario = false pedScenarioNight = false)
        animName = ''                                                  --## Choose animation or disable animation by putting false in animDict or animName https://rdr2.mooshe.tv/animations/
      }, 
      ---- BLIP ---
      showblip = true,
      blipname = "Doctor Craft Book",
      blipsprite = -1656531561,
      blipscale = 0.6,
      blipmodifier = "BLIP_MODIFIER_MP_COLOR_32",
      ----- Craft Book Interact -------
      bookTimeSettings = {                                          --## You can set when the book opens and closes.
        allowed = false,                                            --## If you do false, the book will always be open
        open = 8,
        close = 21,
        blipmodifier = "BLIP_MODIFIER_MP_COLOR_2"                  --## blip colour when the book is closed
      },
      NPC = {}, -- dont touch
    },
    Categories = Craft.DoctorBookItems,
  },
  ["sheriffbook"] = {
    bookID = "FX-1001",
    Settings = {
      image = "/ui/assets/img/craftman.png",
      joblocked = {["sheriff"]=0}, -- Required Job or joblocked = false
      -- joblocked = false, -- Required Job or joblocked = false
      ped = true,
      model = "u_m_m_rhddoctor_01",
      coords = {
        vector4(-758.3670, -1276.5972, 44.0777, 270.4206),
      },
      promptitle = "Sheriff Craft Book",
      distance = 2, -- Prompt visibility distance
      ---- PED SCENARIO AND ANİM ----
      pedScenario = "WORLD_HUMAN_WRITE_NOTEBOOK",            --## Ped scenario /You can add optionally. You can delete the code or turn it false
      anim = {                                                       --## Choose between scenarios or animation. Someone has to be false / You can add optionally. You can delete the code or turn it false
        animDict = '',                                                 --## Gives priority to scenario, if you set the scenarios to false, the anim will work. (pedScenario = false pedScenarioNight = false)
        animName = ''                                                  --## Choose animation or disable animation by putting false in animDict or animName https://rdr2.mooshe.tv/animations/
      }, 
      ---- BLIP ---
      showblip = true,
      blipname = "Sheriff Craft Book",
      blipsprite = -1656531561,
      blipscale = 0.6,
      blipmodifier = "BLIP_MODIFIER_MP_COLOR_32",
      ----- Craft Book Interact -------
      bookTimeSettings = {                                          --## You can set when the book opens and closes.
        allowed = false,                                            --## If you do false, the book will always be open
        open = 8,
        close = 21,
        blipmodifier = "BLIP_MODIFIER_MP_COLOR_2"                  --## blip colour when the book is closed
      },
      NPC = {}, -- dont touch
    },
    Categories = Craft.SheriffBook
  },
}

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
          text = string.gsub(text, "~.-~", "")
          TriggerClientEvent('ox_lib:notify', src, { title = text, type = type, duration = time })
      elseif Framework == "REDEMRP" then
          text = string.gsub(text, "~.-~", "")
          TriggerClientEvent("redem_roleplay:Tip", src, text, time)
      elseif Framework == "VORP" then
          if icon then
              TriggerClientEvent('vorp:ShowAdvancedRightNotification', src, text, dict, icon, color, time)
          else
              TriggerClientEvent("vorp:TipBottom",src, text, time, type)
          end
      end
  else
      if Framework == "RSG" then
          text = string.gsub(text, "~.-~", "")
          TriggerEvent('ox_lib:notify', { title = text, type = type, duration = time })
      elseif Framework == "REDEMRP" then
          text = string.gsub(text, "~.-~", "")
          TriggerEvent("redem_roleplay:Tip", text, time)
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