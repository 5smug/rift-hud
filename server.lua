local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

RegisterServerEvent("rift-hud:updateValues")
AddEventHandler("rift-hud:updateValues", function()
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        local pmoney = vRP.getMoney({user_id})
        local bitcoins = vRP.getdonationCoins({user_id})
        TriggerClientEvent("rift-hud:setValues", source, pmoney, bitcoins)
    end
end)

-- Check READ.ME before changing anything!
