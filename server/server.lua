    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('superettes:achat_item')
AddEventHandler('superettes:achat_item', function(name, price, liquide)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xMoneyL = xPlayer.getMoney()
    local xMoneyB = xPlayer.getAccount('bank').money
    if liquide then
        if xMoneyL >= price then
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem(name, 1)
            TriggerClientEvent('esx:showNotification', source, "Vous avez payé ~g~"..price.."$")
        else
            TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
        end
    else
        if xMoneyB >= price then
            xPlayer.removeAccountMoney('bank', price)
            xPlayer.addInventoryItem(name, 1)
            TriggerClientEvent('esx:showNotification', source, "Vous avez payé ~b~"..price.."$")
        else
            TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
        end
    end
end)
