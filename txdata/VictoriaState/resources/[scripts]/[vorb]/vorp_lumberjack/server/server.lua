local VorpCore = exports.vorp_core:GetCore()
local T = Translation.Langs[Lang]

local chopping_trees = {}

RegisterServerEvent("vorp_lumberjack:axecheck", function(tree)
	local _source = source
	local choppingtree = tree
	if chopping_trees[_source] then
		return
	end

	local axe = exports.vorp_inventory:getItem(_source, Config.Axe)

	if not axe then
		TriggerClientEvent("vorp_lumberjack:noaxe", _source)
		VorpCore.NotifyObjective(_source, T.NotifyLabels.notHaveAxe, 5000)
		return
	end

	local meta = axe.metadata
	if not next(meta) then
		local metadata = { description = T.NotifyLabels.descDurabilityOne .. " " .. "99", durability = 99 }
		exports.vorp_inventory:setItemMetadata(_source, axe.id, metadata, 1)
		TriggerClientEvent("vorp_lumberjack:axechecked", _source, choppingtree)
	else
		local durability = meta.durability - 1
		local description = T.NotifyLabels.descDurabilityTwo .. " " .. durability
		local metadata = { description = description, durability = durability }

		if durability < Config.AxeDurabilityThreshold then
			local random = math.random(Config.AxeBreakChanceMin, Config.AxeBreakChanceMax)
			if random == 1 then
				VorpCore.NotifyObjective(_source, T.NotifyLabels.brokeAxe, 5000)
				exports.vorp_inventory:subItem(_source, Config.Axe, 1, meta)
				TriggerClientEvent("vorp_lumberjack:noaxe", _source)
			else
				exports.vorp_inventory:setItemMetadata(_source, axe.id, metadata, 1)
				TriggerClientEvent("vorp_lumberjack:axechecked", _source, choppingtree)
			end
		else
			exports.vorp_inventory:setItemMetadata(_source, axe.id, metadata, 1)
			TriggerClientEvent("vorp_lumberjack:axechecked", _source, choppingtree)
		end
	end
	chopping_trees[_source] = { coords = choppingtree, count = 0, time = os.time() }
end)

-- clean up the table every minute
CreateThread(function()
	while true do
		Wait(1000)
		for k, v in pairs(chopping_trees) do
			if os.time() - v.time > 60 then
				chopping_trees[k] = nil
			end
		end
	end
end)


RegisterServerEvent('vorp_lumberjack:addItem', function(max_swings)
	math.randomseed(os.time())
	local _source = source

	local choppingtree = chopping_trees[_source]
	if not choppingtree then
		return
	end

	-- check coords of tree
	local tree_coords = choppingtree.coords
	local player_coords = GetEntityCoords(GetPlayerPed(_source))
	local distance = #(tree_coords - player_coords)
	if distance > 10.0 then
		return
	end

	if max_swings > Config.MaxSwing then
		return
	end

	choppingtree.count = choppingtree.count + 1
	if choppingtree.count >= max_swings then
		chopping_trees[_source] = nil
	end

	local chance = math.random(1, 10)
	local reward = {}
	for _, v in ipairs(Config.Items) do
		if v.chance >= chance then
			table.insert(reward, v)
		end
	end

	local randomtotal = #reward
	if randomtotal == 0 then
		VorpCore.NotifyObjective(_source, T.NotifyLabels.gotNothing, 5000)
		return
	end

	local chance2 = math.random(1, randomtotal)
	local count = math.random(1, reward[chance2].amount)
	local canCarry = exports.vorp_inventory:canCarryItem(_source, reward[chance2].name, count)
	if not canCarry then
		return VorpCore.NotifyObjective(_source, T.NotifyLabels.fullBag .. reward[chance2].label, 5000)
	end

	exports.vorp_inventory:addItem(_source, reward[chance2].name, count)
	VorpCore.NotifyObjective(_source, T.NotifyLabels.yourGot .. reward[chance2].label, 3000)
end)

AddEventHandler('playerDropped', function()
	local _source = source
	if chopping_trees[_source] then
		chopping_trees[_source] = nil
	end
end)
