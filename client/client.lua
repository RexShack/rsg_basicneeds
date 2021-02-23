-- created by RexshackGaming : Discord : https://discord.gg/AmdXaFvC5v
-- youtube channel : https://www.youtube.com/channel/UCikEgGfXO-HCPxV5rYHEVbA
-- github : https://github.com/RexShack

RegisterNetEvent('rsg_basicneeds:eatbread')
AddEventHandler('rsg_basicneeds:eatbread', function()
    Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        Wait(1000)
		local Health = GetAttributeCoreValue(PlayerPedId(), 0) -- health core
        local newHealth = Health + 15
        local Stamina = GetAttributeCoreValue(PlayerPedId(), 1) -- stamina core
        local newStamina = Stamina + 15
        local Health2 = GetEntityHealth(PlayerPedId())
        local newHealth2 = Health2 + 15
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 0, newHealth) --core
        Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(), 1, newStamina) --core
        SetEntityHealth(PlayerPedId(), newHealth2)
	end, false)
end)