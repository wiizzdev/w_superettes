    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('w_shops:achatitem')
AddEventHandler('w_shops:achatitem', function(nameitem, priceitem, liquide)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xMoneyL = xPlayer.getMoney()
    local xMoneyB = xPlayer.getAccount('bank').money
    if liquide then
        if xMoneyL >= priceitem then
            xPlayer.removeMoney(priceitem)
            xPlayer.addInventoryItem(nameitem, 1)
            TriggerClientEvent('esx:showNotification', source, "Vous avez payé ~g~"..priceitem.."$")
        else
            TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
        end
    else
        if xMoneyB >= priceitem then
            xPlayer.removeAccountMoney('bank', priceitem)
            xPlayer.addInventoryItem(nameitem, 1)
            TriggerClientEvent('esx:showNotification', source, "Vous avez payé ~b~"..priceitem.."$")
        else
            TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
        end
    end
end)

ESX.RegisterServerCallback('w_shops:checkcarte', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getInventoryItem(Config.NomItemCarte).count >= 1 then
		cb(true)
    else
		cb(false)
    end
end)