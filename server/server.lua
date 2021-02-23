-- created by RexshackGaming : Discord : https://discord.gg/AmdXaFvC5v
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
-- github : https://github.com/RexShack

local data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

-------- bread
RegisterServerEvent("RegisterUsableItem:bread")
AddEventHandler("RegisterUsableItem:bread", function(source)
    local _source = source
    local ItemData = data.getItem(_source, "bread")
    ItemData.RemoveItem(1)
    TriggerClientEvent("rsg_basicneeds:eatbread", _source) 
end)