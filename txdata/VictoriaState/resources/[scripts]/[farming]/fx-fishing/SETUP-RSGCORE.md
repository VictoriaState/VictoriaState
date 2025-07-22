## RSG-CORE/SHARED/ITEMS.LUA

## RSG V1
```lua
    --- FX-FISHING ---
    ['redpearl']              = {['name'] = 'redpearl',              ['attachPoint'] = 11, ['label'] = 'Red Pearl',       ['weight'] = 100,  ['type'] = 'item',['image'] = 'redpearl.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['bluepearl']             = {['name'] = 'bluepearl',             ['attachPoint'] = 11, ['label'] = 'Blue Pearl',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'bluepearl.png',               ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['whitepearl']            = {['name'] = 'whitepearl',            ['attachPoint'] = 11, ['label'] = 'White Pearl',     ['weight'] = 100,  ['type'] = 'item',['image'] = 'whitepearl.png',              ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['goldpearl']             = {['name'] = 'goldpearl',             ['attachPoint'] = 11, ['label'] = 'Gold Pearl',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'goldpearl.png',               ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['blessing_paper']        = {['name'] = 'blessing_paper',        ['attachPoint'] = 11, ['label'] = 'Blessing Paper',  ['weight'] = 100,  ['type'] = 'item',['image'] = 'blessing_paper.png',          ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['magical_metal']         = {['name'] = 'magical_metal',         ['attachPoint'] = 11, ['label'] = 'Magical Metal',   ['weight'] = 100,  ['type'] = 'item',['image'] = 'magical_metal.png',           ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['rituel10']              = {['name'] = 'rituel10',              ['attachPoint'] = 11, ['label'] = 'Rituel %10',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'rituel10.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['rituel20']              = {['name'] = 'rituel20',              ['attachPoint'] = 11, ['label'] = 'Rituel %20',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'rituel20.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['rituel30']              = {['name'] = 'rituel30',              ['attachPoint'] = 11, ['label'] = 'Rituel %30',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'rituel30.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['rituel50']              = {['name'] = 'rituel50',              ['attachPoint'] = 11, ['label'] = 'Rituel %50',      ['weight'] = 100,  ['type'] = 'item',['image'] = 'rituel50.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['fishingrod']            = {['name'] = 'fishingrod',            ['attachPoint'] = 11, ['label'] = 'Fishing Rod',     ['weight'] = 100,  ['type'] = 'item',['image'] = 'fishingrod.png',              ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['fishbait']              = {['name'] = 'fishbait',              ['attachPoint'] = 11, ['label'] = 'Fish Bait',       ['weight'] = 100,  ['type'] = 'item',['image'] = 'fishbait.png',                ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
    ['efsun']                 = {['name'] = 'efsun',                 ['attachPoint'] = 11, ['label'] = 'Efsun',           ['weight'] = 100,  ['type'] = 'item',['image'] = 'efsun.png',                   ['unique'] = true,  ['useable'] = true, ['level'] = 0, ['description'] = 'Fixitfy'},
```
## RSG V2
### The “fishingrod” item must be set to unique (unique = true,)
```lua
-- FX-Fishing Items (RSG V2 Format)
    redpearl                  = { name = 'redpearl',                  label = 'Red Pearl',      weight = 100, type = 'item', image = 'redpearl.png',             unique = false,  useable = true, shouldClose = true, description = 'Red Pearl' },
    bluepearl                 = { name = 'bluepearl',                 label = 'Blue Pearl',     weight = 100, type = 'item', image = 'bluepearl.png',            unique = false,  useable = true, shouldClose = true, description = 'Blue Pearl' },
    whitepearl                = { name = 'whitepearl',                label = 'White Pearl',    weight = 100, type = 'item', image = 'whitepearl.png',           unique = false,  useable = true, shouldClose = true, description = 'White Pearl' },
    goldpearl                 = { name = 'goldpearl',                 label = 'Gold Pearl',     weight = 100, type = 'item', image = 'goldpearl.png',            unique = false,  useable = true, shouldClose = true, description = 'Gold Pearl' },
    blessing_paper            = { name = 'blessing_paper',            label = 'Blessing Paper', weight = 100, type = 'item', image = 'blessing_paper.png',       unique = false,  useable = true, shouldClose = true, description = 'Blessing Paper' },
    magical_metal             = { name = 'magical_metal',             label = 'Magical Metal',  weight = 100, type = 'item', image = 'magical_metal.png',        unique = false,  useable = true, shouldClose = true, description = 'Magical Metal' },
    rituel10                  = { name = 'rituel10',                  label = 'Rituel %10',     weight = 100, type = 'item', image = 'rituel10.png',             unique = false,  useable = true, shouldClose = true, description = 'Rituel 10' },
    rituel20                  = { name = 'rituel20',                  label = 'Rituel %20',     weight = 100, type = 'item', image = 'rituel20.png',             unique = false,  useable = true, shouldClose = true, description = 'Rituel 20' },
    rituel30                  = { name = 'rituel30',                  label = 'Rituel %30',     weight = 100, type = 'item', image = 'rituel30.png',             unique = false,  useable = true, shouldClose = true, description = 'Rituel 30' },
    rituel50                  = { name = 'rituel50',                  label = 'Rituel %50',     weight = 100, type = 'item', image = 'rituel50.png',             unique = false,  useable = true, shouldClose = true, description = 'Rituel 50' },
    fishingrod                = { name = 'fishingrod',                label = 'Fishing Rod',    weight = 100, type = 'item', image = 'fishingrod.png',           unique = true,   useable = true, shouldClose = true, description = 'Fishing Rod' },
    fishbait                  = { name = 'fishbait',                  label = 'Fish Bait',      weight = 100, type = 'item', image = 'fishbait.png',             unique = false,  useable = true, shouldClose = true, description = 'Fish Bait' },
    efsun                     = { name = 'efsun',                     label = 'Efsun',          weight = 100, type = 'item', image = 'efsun.png',                unique = false,  useable = true, shouldClose = true, description = 'Efsun' },
```

## RSG-ESSENTIALS/CLIENT/WEAPONCHECK.LUA / CHANGE CODE (ONLY RSGV1)
```lua
local RSGCore = exports['rsg-core']:GetCoreObject()

local whitems = {
    "fishingrod"
}

CreateThread(function()	-- Check if player has weapon in inventory --
    while true do
        Wait(5000)
        local player = PlayerPedId()
        local weapon = Citizen.InvokeNative(0x8425C5F057012DAB, player)
        local WeaponData = RSGCore.Shared.Weapons[weapon]
        if WeaponData ~= nil and WeaponData["name"] ~= "weapon_unarmed" then
            local weaponGroup = Citizen.InvokeNative(0xEDCA14CA5199FF25, weapon)
            if weaponGroup ~= `group_thrown` then
                RSGCore.Functions.GetPlayerData(function(PlayerData)
                    firstname = PlayerData.charinfo.firstname
                    lastname = PlayerData.charinfo.lastname
                    fullname = firstname..' '..lastname
                end)
                local hasItem = false
                for k,v in pairs(whitems) do
                    if RSGCore.Functions.HasItem(WeaponData["name"]) or v then
                        hasItem = true
                    end
                end
                if not hasItem then
                    SetCurrentPedWeapon(player, `WEAPON_UNARMED`, true)
                    RemoveAllPedWeapons(player, true, true)
                    TriggerServerEvent("rsg-log:server:CreateLog", "anticheat",  Lang:t('log.weapon_removed'), "orange", '** @staff ** '..fullname..' had a weapon on them that they did not have in his inventory : anticheat has removed the weapon')
                end
            end
        end
    end
end)
```