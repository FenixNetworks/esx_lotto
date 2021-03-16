ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent(Config.SharedObject, function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('znyte-OpenlottoCardNUI')
AddEventHandler('znyte-OpenlottoCardNUI', function()
	SetNuiFocus( true, true )
	SendNUIMessage({
		showPlayerMenu = true
	})
end)

RegisterNetEvent('znyte-ShowLottoCardprice')
AddEventHandler('znyte-ShowLottoCardprice', function(money)
	SetNuiFocus( true, true )
	SendNUIMessage({
		showPlayerMenu = nil,
		prize = money
	})
end)

RegisterCommand(Config.Antibugcomand, function(source, args, rawCommand)
	SetNuiFocus( false, false )
	SendNUIMessage({
		showPlayerMenu = false
	})
end)

RegisterNetEvent('znyte-AddMammt')
AddEventHandler('znyte-AddMammt', function()
	item = true
end)

RegisterNetEvent('znyte-RemoveMammt')
AddEventHandler('znyte-RemoveMammt', function()
	item = false
end)
