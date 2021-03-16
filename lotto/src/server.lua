

ESX = nil
TriggerEvent(Config.SharedObject, function(obj)
	ESX = obj
end)
--print('Io parto')

ESX.RegisterUsableItem(Config.item , function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem(Config.item , 1)
	TriggerClientEvent("znyte-OpenlottoCardNUI", source)
end)
--print('Io parto')

RegisterServerEvent('znyte-BimbiXstrada')
AddEventHandler('znyte-BimbiXstrada', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addAccountMoney('bank', Config.Payment)
end)


