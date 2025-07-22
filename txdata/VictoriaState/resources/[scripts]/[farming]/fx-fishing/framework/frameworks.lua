Framework = "none"
onPlayerLoadEvent = "none" 
LoadTimeout = 5
invVersion = 1.0
if GetResourceState('vorp_core') == 'started' then
    Framework = "VORP"
    onPlayerLoadEvent = "vorp:SelectedCharacter" 
    LoadTimeout = 5
    invVersion = GetResourceMetadata("vorp_inventory", 'version', 0)
    print("^2[INFO]^0 Framework selected: ^3" .. Framework .. "^0")
elseif GetResourceState('rsg-core') == 'started' then
    Framework = "RSG"
    LoadTimeout = 5
    onPlayerLoadEvent = "RSGCore:Client:OnPlayerLoaded"
    invVersion = GetResourceMetadata("rsg-inventory", 'version', 0)
    print("^2[INFO]^0 Framework selected: ^3" .. Framework .. "^0")
else
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(2000)
            print("^1[ERROR]^0 No suitable framework found. ^2Please install ^3vorp_core^2 or ^3rsg-core^2.")
            print("^1[ERROR]^0 Make sure to start ^3fx-fishing^0 after the frameworks in your ^2server.cfg^0 file.")
        end
    end)
end 

if Framework == "VORP" then
    if IsDuplicityVersion() then
        --[[
            Server Side
        ]]
        VorpCore = {}
    
        TriggerEvent("getCore", function(core)
            VorpCore = core
        end)
    
        VorpInv = {}
        VorpInv = exports.vorp_inventory:vorp_inventoryApi()

        function FXRegisterUsableItem(itemname,callBack)
            VorpInv.RegisterUsableItem(itemname, function(data)
                local array = {
                    source = data.source,
                    item = data.item
                }
                callBack(array)
            end)
        end
        
        function FXRegisterCallback(eventName, callBack,...)
            VorpCore.addRpcCallback(eventName, function(source, cb, ...)
                callBack(source,cb,...)
            end)
        end
        
        function FXCloseInventory(src)
            VorpInv.CloseInv(src)
        end

        function FXRemoveItem(src, itemName, itemCount, Metadata, itemId)
            Metadata = Metadata or {}
            if invVersion and tonumber(invVersion) and tonumber(invVersion) >= 4.0 then
                if itemId then
                    local subItemById = exports.vorp_inventory:subItemById(src, itemId)
                    -- print("subItemById: "..tostring(subItemById))
                else
                    local subItem = exports.vorp_inventory:subItem(src, itemName, tonumber(itemCount), Metadata)
                    -- print("subItem: "..tostring(subItem))
                end
            else
                VorpInv.subItem(src, itemName, tonumber(itemCount), Metadata)
            end
        end
        
        function FXAddItem(src,itemName,itemCount,Metadata)
            exports.vorp_inventory:addItem(tonumber(src), itemName, tonumber(itemCount), Metadata, function(success)
                --print(success)
            end,false)
        end
        
        function FXGetItem(src,ItemName)
            return exports.vorp_inventory:getItem(src, ItemName)
            -- return VorpInv.getItem(src, ItemName)
        end
        function FXGetItemCount(src,ItemName)
            -- local retval = VorpInv.getItem(src, ItemName)
            local retval = exports.vorp_inventory:getItem(src, ItemName)
            return retval and retval.count or 0
        end
        
        function FXGetPlayerData(src)
            local User = VorpCore.getUser(src)
            local admincheck = false
            if User.getGroup == "admin" then
                admincheck = true
            end
            local Character = User.getUsedCharacter
            local array = {
                firstname = Character.firstname,
                lastname = Character.lastname,
                job = Character.job,
                grade = Character.jobGrade,
                admin = admincheck,
            }
            return array
        end
    
    else
    --[[
        Client Side
    ]]    
    
        VorpCore = {}
        TriggerEvent("getCore", function(core)
            VorpCore = core
        end)
    
        function FXTriggerServerCallback(eventName,callBack,...)
            VorpCore.RpcCall(eventName,function(...)
                callBack(...)
            end,...)
        end
    end
elseif Framework == "RSG" then
    if IsDuplicityVersion() then
        --[[
            Server Side
        ]]
        RSGCore = exports['rsg-core']:GetCoreObject()
        function FXRegisterUsableItem(itemname,callBack)
            RSGCore.Functions.CreateUseableItem(itemname, function(source,item)
                local array = {
                    source = source,
                    item = item
                }
                array.item.metadata = item.info
                callBack(array)
            end)
        end
        
        function FXRegisterCallback(eventName, callBack,...)
            RSGCore.Functions.CreateCallback(eventName, function(source, cb, ...)
                callBack(source,cb,...)
            end)
        end
    
        function FXCanCarry(src,item,count)
            local Player = RSGCore.Functions.GetPlayer(src)
            local retval = true
            -- if Player.Functions.AddItem(item, count) then
            --     retval = true
            --     Player.Functions.RemoveItem(item, count)
            -- end
            return retval
    
        end
    
        function FXCloseInventory(src)
            TriggerClientEvent("rsg-inventory:client:closeinv", src)
        end
        
        function FXRemoveItem(src,itemName,itemCount,Metadata,slot)
            local Player = RSGCore.Functions.GetPlayer(src)
            local foundslot = slot
            if not foundslot then
                for slot,item in pairs(Player.PlayerData.items) do
                    if item.name:lower() == itemName:lower() then
                        if Metadata then
                            if (item.info.oltaData.oltaID == Metadata.oltaData.oltaID) and item.info.oltaData.oltaID ~= nil then
                                foundslot = slot
                                break
                            end
                        else
                            foundslot = slot
                            break
                        end
                    end
                end
            end
            if not foundslot then return false end
            Player.Functions.RemoveItem(itemName, itemCount,foundslot)
        end
        
        function FXAddItem(src,itemName,itemCount,Metadata)
            local Player = RSGCore.Functions.GetPlayer(src)
            Player.Functions.AddItem(itemName, itemCount,false,Metadata)
        end
        
        function FXGetItem(src,ItemName)
            local Player = RSGCore.Functions.GetPlayer(src)
            local founditem = false
            for slot,item in pairs(Player.PlayerData.items) do
                if item.name:lower() == ItemName:lower() then
                    founditem = item
                    break
                end
            end
            return founditem
        end
    
        function FXGetItemCount(src,ItemName)
            local Player = RSGCore.Functions.GetPlayer(src)
            local founditem = 0
            for slot,item in pairs(Player.PlayerData.items) do
                if item.name:lower() == ItemName:lower() then
                    founditem = item.amount
                    break
                end
            end
            return founditem
        end
        
        function FXGetPlayerData(src)
            local Player = RSGCore.Functions.GetPlayer(src)
            local checkadmin = RSGCore.Functions.HasPermission(src, 'admin')
            local array = {
                firstname = Player.PlayerData.charinfo.firstname,
                lastname = Player.PlayerData.charinfo.firstname,
                job = Player.PlayerData.job.name,
                grade = Player.PlayerData.job.grade.level,
                admin = checkadmin
            }
            return array
        end
    
    else
    --[[
        Client Side
    ]]    
        RSGCore = exports['rsg-core']:GetCoreObject()   
    
        function FXTriggerServerCallback(eventName,callBack,...)
            RSGCore.Functions.TriggerCallback(eventName,function(...)
                callBack(...)
            end,...)
        end
    end    
end

