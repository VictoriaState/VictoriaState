Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isBusy then
            DisableControlAction(0, 0xC1989F95, true) --- "I" Disable Open Inventory
        end
    end
end)