
--[[
Question 1 -  Fix or improve the implementation of the below methods

local function releaseStorage(player)
    player:setStorageValue(1000, -1)
end

function onLogout(player)
    if player:getStorageValue(1000) == 1 then
        addEvent(releaseStorage, 1000, player)
    end
    return true
end
]]

--To improve the performance and legibility of this code, i created a anonimous function,
--so i can remove part of the code, and the result is: 

function onLogout(player)
    if player:getStorageValue(1000) == 1 then
        addEvent(function ()
            player:setStorageValue(1000, -1)
        end, 1000, player)
    end
    return true
end