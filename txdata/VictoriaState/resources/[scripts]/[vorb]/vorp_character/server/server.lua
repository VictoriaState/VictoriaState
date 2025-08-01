local T = Translation.Langs[Lang]
local random = math.random(1, #Config.SpawnPosition)
local Core = exports.vorp_core:GetCore()


local function ConvertTable(comps, compTints)
	local NewComps = {}

	for k, comp in pairs(comps) do
		NewComps[k] = { comp = comp, tint0 = 0, tint1 = 0, tint2 = 0, palette = 0 }

		if compTints and compTints[k] and compTints[k][tostring(comp)] then
			local compTint = compTints[k][tostring(comp)]
			NewComps[k].tint0 = compTint.tint0 or 0
			NewComps[k].tint1 = compTint.tint1 or 0
			NewComps[k].tint2 = compTint.tint2 or 0
			NewComps[k].palette = compTint.palette or 0
			NewComps[k].state = compTint.state or nil
		end
	end

	return NewComps
end

local function Checkmissingkeys(data, key)
	local switch = false
	if key == "skin" then
		for k, v in pairs(PlayerSkin) do
			if data[k] == nil then
				switch = true
				data[k] = v
			end
			if data.Eyes == 0 then
				switch = true
				if data.sex == "mp_male" then
					data.Eyes = 612262189
				else
					data.Eyes = 928002221
				end
			end
		end
		return data, switch
	end
	if key == "comps" then
		for k, v in pairs(PlayerClothing) do
			if data[k] == nil then
				data[k] = v.comp
			end
		end
		return data, switch
	end
end

local function UpdateDatabase(character)
	local json_skin = json.decode(character.skin)
	local json_comps = json.decode(character.comps)
	local compTints = json.decode(character.compTints)
	local skin, updateSkin = Checkmissingkeys(json_skin, "skin")
	local comps, updateComp = Checkmissingkeys(json_comps, "comps")

	if updateSkin then
		character.updateSkin((json.encode(skin)))
	end

	if updateComp then
		character.updateComps(json.encode(comps))
	end

	local NewComps = ConvertTable(comps, compTints)

	return skin, NewComps
end

local function GetPlayerData(source)
	local User = Core.getUser(source)

	if not User then
		return false
	end
	local Characters = User.getUserCharacters


	local userCharacters = {}
	for _, characters in pairs(Characters) do
		local skin, comps = UpdateDatabase(characters)
		local userChars = {
			charIdentifier = characters.charIdentifier,
			money = characters.money,
			gold = characters.gold,
			firstname = characters.firstname,
			lastname = characters.lastname,
			skin = skin,
			components = comps,
			coords = json.decode(characters.coords),
			isDead = characters.isdead,
			job = characters.jobLabel or "Kein Job",
			grade = characters.jobGrade or "",
			group = characters.group or "",
			age = characters.age or "",
			nickname = characters.nickname or "",
			gender = characters.gender or "",
			charDesc = characters.charDescription or "",
		}
		userCharacters[#userCharacters + 1] = userChars
	end
	return userCharacters
end

AddEventHandler("vorp_CreateNewCharacter", function(source)
	TriggerClientEvent("vorpcharacter:startCharacterCreator", source)
end)

local function iniSpawn()
	local numSpawns = #Config.SpawnCoords
	if numSpawns == 0 then return print("update config file") end

	local randomIndex = math.random(1, numSpawns)
	local selectedSpawn = Config.SpawnCoords[randomIndex]

	return selectedSpawn.position, selectedSpawn.heading
end

RegisterServerEvent("vorpcharacter:saveCharacter", function(data)
	local _source = source
	Core.getUser(_source).addCharacter(data)
	Wait(600)
	local iniPos, iniHead = iniSpawn()
	TriggerClientEvent("vorp:initCharacter", _source, iniPos, iniHead, false)
	SetTimeout(3000, function()
		TriggerEvent("vorp_NewCharacter", _source)
	end)
end)

RegisterServerEvent("vorpcharacter:deleteCharacter", function(selectedChar)
	local _source = source
	local user = Core.getUser(_source)
	if user then
		local charid = selectedChar.charIdentifier
		local SteamName = GetPlayerName(_source)
		local SteamId = GetPlayerIdentifiers(_source)[1]
		local description = "SteamID : " .. SteamId .. "\n" .. "Steam Name : " .. SteamName .. "\n" ..
			"Playername : " .. selectedChar.firstname .. " " .. selectedChar.lastname .. "\n" .. "Character Description : " ..
			selectedChar.charDesc
		Core.AddWebhook(Logs.DeleteCharacterWebhhok.Title, Logs.WebhookUrl, description, Logs.color, Logs.DeleteCharacterWebhhok.WebhookName, Logs.logo, Logs.footerlogo, Logs.avatar)
		user.removeCharacter(charid)
	end
end)

RegisterServerEvent("vorp_CharSelectedCharacter", function(charid)
	local _source = source
	local user = Core.getUser(_source)
	if user then
		user.setUsedCharacter(charid)
	end
end)



RegisterNetEvent("vorpcharacter:setPlayerCompChange", function(skinValues, compsValues)
	local _source = source
	local user = Core.getUser(_source)
	if user then
		local character = user.getUsedCharacter
		if compsValues then
			character.updateComps(json.encode(compsValues))
		end

		if skinValues then
			character.updateSkin(json.encode(skinValues))
		end
	end
end)


RegisterNetEvent("vorp_character:server:SpawnUniqueCharacter")
AddEventHandler("vorp_character:server:SpawnUniqueCharacter", function(source)
	local userCharacters = GetPlayerData(source)
	if not userCharacters then
		return
	end
	TriggerClientEvent("vorpcharacter:spawnUniqueCharacter", source, userCharacters)
end)

if Config.DevMode then
	RegisterServerEvent("vorp_character:server:GoToSelectionMenu")
end

AddEventHandler("vorp_character:server:GoToSelectionMenu", function(src)
	local _source = Config.DevMode and source or src

	if not Config.DevMode then
		if Player(_source).state.IsInSession then
			return print("player is past selection")
		end
	end

	local UserCharacters = GetPlayerData(_source)

	if not UserCharacters then
		return
	end

	local MaxCharacters = Core.maxCharacters(_source)
	if not MaxCharacters then
		return
	end

	TriggerClientEvent("vorpcharacter:selectCharacter", _source, UserCharacters, MaxCharacters, random)
end)


Core.Callback.Register("vorp_characters:getMaxCharacters", function(source, cb)
	local MaxCharacters = Core.maxCharacters(source)

	if not MaxCharacters then
		return
	end

	cb(#MaxCharacters)
end)

Core.Callback.Register("vorp_character:callback:PayToShop", function(source, callback, arguments)
	local user = Core.getUser(source)
	if not user then
		return callback(false)
	end
	local character = user.getUsedCharacter
	local money = character.money
	local amountToPay = arguments.amount

	if money < amountToPay then
		SetTimeout(5000, function()
			Core.NotifyRightTip(source, string.format(T.PayToShop.DontMoney, amountToPay), 6000)
		end)
		return callback(false)
	end

	SetTimeout(5000, function()
		Core.NotifyRightTip(source, string.format(T.PayToShop.Youpaid, amountToPay), 6000)
	end)

	character.removeCurrency(0, amountToPay)

	if arguments.skin then
		character.updateSkin((json.encode(arguments.skin)))
	end

	if arguments.comps then
		character.updateComps(json.encode(arguments.comps))
	end

	if arguments.compTints then
		character.updateCompTints(json.encode(arguments.compTints))
	end

	if arguments.Result and arguments.Result ~= '' then
		local Parameters = { character.identifier, character.charIdentifier, arguments.Result, json.encode(arguments.comps), json.encode(arguments.compTints) }

		---@diagnostic disable-next-line: undefined-global
		MySQL.insert("INSERT INTO outfits (identifier, charidentifier, title, comps, compTints) VALUES (?, ?, ? ,?, ?)", Parameters)
	end

	return callback(true)
end)

local function CanProcceed(user, source)
	local character = user.getUsedCharacter
	local money = ConfigShops.SecondChanceCurrency == 0 and character.money or ConfigShops.SecondChanceCurrency == 1 and character.gold or ConfigShops.SecondChanceCurrency == 2 and character.rol
	local amountToPay = ConfigShops.SecondChancePrice
	local moneyType = ConfigShops.SecondChanceCurrency == 0 and "money" or ConfigShops.SecondChanceCurrency == 1 and "gold" or ConfigShops.SecondChanceCurrency == 2 and "rol"

	if money < amountToPay then
		Core.NotifyRightTip(source, string.format(T.PayToShop.notenoughtMoney, moneyType, ConfigShops.SecondChancePrice), 6000)
		return false
	end

	return true
end

Core.Callback.Register("vorp_character:callback:CanPayForSecondChance", function(source, callback)
	local user = Core.getUser(source)

	if not user then
		return callback(false)
	end

	if not CanProcceed(user, source) then
		return callback(false)
	end

	return callback(true)
end)

Core.Callback.Register("vorp_character:callback:PayForSecondChance", function(source, callback, data)
	local user = Core.getUser(source)

	if not user then
		return callback(false)
	end
	local character = user.getUsedCharacter

	if not CanProcceed(user, source) then
		return callback(false)
	end

	if data.comps then
		character.updateComps(json.encode(data.comps))
	end

	if data.skin then
		character.updateSkin(json.encode(data.skin))
	end

	if data.compTints then
		character.updateCompTints(json.encode(data.compTints))
	end

	character.removeCurrency(ConfigShops.SecondChanceCurrency, ConfigShops.SecondChancePrice)

	return callback(true)
end)

Core.Callback.Register("vorp_character:callback:GetOutfits", function(source, callback)
	local character = Core.getUser(source).getUsedCharacter

	---@diagnostic disable-next-line: undefined-global
	MySQL.query("SELECT * FROM outfits WHERE `identifier` = ? AND `charidentifier` = ?", { character.identifier, character.charIdentifier }, function(Outfits)
		return callback(Outfits)
	end)
end)

Core.Callback.Register("vorp_character:callback:SetOutfit", function(source, callback, arguments)
	local character = Core.getUser(source).getUsedCharacter

	character.updateComps(arguments.Outfit.comps or '{}')
	character.updateCompTints(arguments.Outfit.compTints or '{}')

	return callback(true)
end)

Core.Callback.Register("vorp_character:callback:DeleteOutfit", function(source, callback, arguments)
	local character = Core.getUser(source).getUsedCharacter

	---@diagnostic disable-next-line: undefined-global
	MySQL.query("DELETE FROM outfits WHERE identifier = ? AND id = ?", { character.identifier, arguments.Outfit.id })

	return callback(true)
end)
