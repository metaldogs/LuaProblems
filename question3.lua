--[[
Q3 - Fix or improve the name and the implementation of the below method
function do_sth_with_PlayerParty(playerId, membername)
    player = Player(playerId)
    local party = player:getParty()

    for k, v in pairs(party:getMembers()) do
        if v == Player(membername) then
            party:removeMember(Player(membername))
        end
    end
end

]]

--What i understand is, that function receives a player and the member that should be removed from the party

function Remove_PlayerParty(playerId, membername)
    local player = Player(playerId) --Create a new player with id playerId, with luck, it gets all the infos of a existing player
    local party = player:getParty() --Get the party of that player

    for k, v in pairs(party:getMembers()) do --itererate through the list of members of the party
        if v == membername then -- here, i compare the value from the each member in the party and if matches with member name 
            party:removeMember(membername) --the member is removed from the party
        end
    end
end