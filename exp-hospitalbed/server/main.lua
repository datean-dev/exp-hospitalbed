ESX = nil 
 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

RegisterServerEvent('exp-hospitalbed:keyPressed')
AddEventHandler('exp-hospitalbed:keyPressed', function()
	TriggerClientEvent('exp-hospitalbed:bed', source)
end)

RegisterServerEvent('exp-hospitalbed:takeMoney')
AddEventHandler('exp-hospitalbed:takeMoney', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeAccountMoney('bank', 250)
end)
