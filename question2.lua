--[[
Q2 - Fix or improve the implementation of the below method

function printSmallGuildNames(memberCount)
-- this method is supposed to print names of all guilds that have less than memberCount max members
local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
local guildName = result.getString("name")
print(guildName)
end

]]

-- this method is supposed to print names of all guilds that have less than memberCount max members
function printSmallGuildNames(memberCount)
    -- Creating the sql query string to get all guild names where max members are less than memberCount
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d" 
    -- Run the query
    local query = db.storeQuery(string.format(selectGuildQuery, memberCount)) 
    
    --If get some result, print all names one by one
    if result then
        repeat
            local guildName = result.getString(query,"name")
            print(guildName) 
        until not result.next()
        result.free(query)
    end
end
