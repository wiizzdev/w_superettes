    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  
-- Event de l'achat de l'item 'water'
RegisterNetEvent('wdev:achatEau') -- enregistrement de l'event
AddEventHandler('wdev:achatEau', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('water', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)

-- Event de l'achat de l'item 'whisky'
RegisterNetEvent('wdev:achatWhisky') -- enregistrement de l'event
AddEventHandler('wdev:achatWhisky', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('whisky', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)

-- Event de l'achat de l'item 'mojito'
RegisterNetEvent('wdev:achatMojito') -- enregistrement de l'event
AddEventHandler('wdev:achatMojito', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('mojito', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)

-- Event de l'achat de l'item bread'
RegisterNetEvent('wdev:achatPain') -- enregistrement de l'event
AddEventHandler('wdev:achatPain', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('bread', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)

-- Event de l'achat de l'item 'sandwich'
RegisterNetEvent('wdev:achatSandwich') -- enregistrement de l'event
AddEventHandler('wdev:achatSandwich', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('sandwich', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)

-- Event de l'achat de l'item 'chocolate'
RegisterNetEvent('wdev:achatChocolat') -- enregistrement de l'event
AddEventHandler('wdev:achatChocolat', function() -- définition de l'event
  local _src = source
  local joueur = ESX.GetPlayerFromId(source)  
  local prix = 3 -- prix de l'item => changeable dans le config.lua
  local argent = joueur.getMoney()
    if argent >= prix then -- si l'argent est supérieur ou égal a l'argent alors
      joueur.removeMoney(prix) -- supprimer l'argent au joueur
      joueur.addInventoryItem('chocolate', 1) -- ajouter l'item à l'inventaire du joueur
      TriggerClientEvent('esx:showNotification', source, "Achat effectué !") -- contenue de la notif si achat validé
    else -- sinon
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d\'argent") -- contenue de la notif si achat refusé
    end
end)