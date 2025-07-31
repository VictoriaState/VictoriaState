--[[
exports['SS-ProgressBar']:SetAction({
        time = "SET DURATION EX: 5000",
        text = "TEXT OF THE LABEL",
        image = "ITEM OR LEAVE EMPTY",
        canStop = true, -- CAN STOP THE ACTION BY BACKSPACE ?
        disableControls = true, -- DISABLE CONTROLS WHILE WAITING ?
        animation = {animDict = "DICT NAME OR FALSE", anim = "ANIM NAME OR FALSE", flags = "1 FOR REPEAT, 2 FOR LAST FRAME"},
        prop = {model = false, bone = "", coords = {x = 0, y = 0, z = 0}, rotation = {x = 0, y = 0, z = 0}},
    }, function(cancelled)
        if not cancelled then
			print("FINISH ! DO THIS CODE")
        else
			print("CANCELED ! DO THIS CODE")
        end
    end)
]]