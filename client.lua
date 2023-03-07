local display = false

RegisterCommand(
    "hud",
    function()
        Citizen.CreateThread(
            function()
                display = true
                Wait(6500) -- 1000 = 1 second.
                display = false
            end
        )
    end
)

function formatMoney(amount)
    local left, num, right = string.match(tostring(amount), "^([^%d]*%d)(%d*)(.-)$")
    return left .. (num:reverse():gsub("(%d%d%d)", "%1."):reverse()) .. right
end

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(1000)
            TriggerServerEvent("rift-hud:updateValues")
        end
    end
)

function GetOnlinePlayers()
    local players = 0
    for i = 0, 256 do
        if NetworkIsPlayerActive(i) then
            players = players + 1
        end
    end
    return tonumber(players)
end

RegisterNetEvent("rift-hud:setValues")
AddEventHandler(
    "rift-hud:setValues",
    function(bitcoins, pmoney)
        SendNUIMessage(
            {
                type = "ui",
                players = GetOnlinePlayers(),
                bitcoins = formatMoney(bitcoins),
                pmoney = formatMoney(pmoney),
                display = display
            }
        )
    end
)