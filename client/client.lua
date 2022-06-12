Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

local mainMenu = RageUI.CreateMenu("", "Supérette", 0, 0, "commonmenu", "shopbanner")
local nourriture = RageUI.CreateSubMenu(mainMenu, "", "Nourriture")
local boissons = RageUI.CreateSubMenu(mainMenu, "", "Boissons")
local divers = RageUI.CreateSubMenu(mainMenu, "", "Divers")
local open,Index = false,1

mainMenu.Closed = function() open = false end

function Superettes()
    if not open then open = true RageUI.Visible(mainMenu, true) 
        Citizen.CreateThread(function()
            while open do
                RageUI.IsVisible(mainMenu, function()
                    if Config.Menu.Activer.Nourriture then
                        RageUI.Button("Nourriture", nil, {RightLabel = "→"}, true, {}, nourriture)
                    end
                    if Config.Menu.Activer.Boissons then
                        RageUI.Button("Boissons", nil, {RightLabel = "→"}, true, {}, boissons)
                    end
                    if Config.Menu.Activer.Divers then
                        RageUI.Button("Divers", nil, {RightLabel = "→"}, true, {}, divers)
                    end
                end)
                RageUI.IsVisible(nourriture, function()
                    for k,v in pairs(Config.Menu.Nourriture) do
                        if not Config.Menu.Activer.PaiementBanque then
                            RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                                onSelected = function()
                                    TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                end
                            })
                        else
                            RageUI.List(v.label.." - ~g~"..v.price.."$", {"~g~Liquide~s~", "~b~Banque~s~"}, Index, nil, {}, true, {
                                onListChange = function(list) Index = list end,
                                onSelected = function(list)
                                    if list == 1 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                    elseif list == 2 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, false)
                                    end
                                end
                            })
                        end
                    end
                end)
                RageUI.IsVisible(boissons, function()
                    for k,v in pairs(Config.Menu.Boissons) do
                        if not Config.Menu.Activer.PaiementBanque then
                            RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                                onSelected = function()
                                    TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                end
                            })
                        else
                            RageUI.List(v.label.." - ~g~"..v.price.."$", {"~g~Liquide~s~", "~b~Banque~s~"}, Index, nil, {}, true, {
                                onListChange = function(list) Index = list end,
                                onSelected = function(list)
                                    if list == 1 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                    elseif list == 2 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, false)
                                    end
                                end
                            })
                        end
                    end
                end)
                RageUI.IsVisible(divers, function()
                    for k,v in pairs(Config.Menu.Divers) do
                        if not Config.Menu.Activer.PaiementBanque then
                            RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                                onSelected = function()
                                    TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                end
                            })
                        else
                            RageUI.List(v.label.." - ~g~"..v.price.."$", {"~g~Liquide~s~", "~b~Banque~s~"}, Index, nil, {}, true, {
                                onListChange = function(list) Index = list end,
                                onSelected = function(list)
                                    if list == 1 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, true)
                                    elseif list == 2 then
                                        TriggerServerEvent('superettes:achat_item', v.name, v.price, false)
                                    end
                                end
                            })
                        end
                    end
                end)
            Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    for k,v in pairs(Config.Position) do
        if Config.Blips.Activer then
            local blip = AddBlipForCoord(v.x, v.y, v.z)
            SetBlipSprite(blip, Config.Blips.Sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, Config.Blips.Scale)
            SetBlipColour(blip, Config.Blips.Color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(Config.Blips.Name)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        local wait = 900
        for k,v in pairs(Config.Position) do
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, v.x, v.y, v.z)
            if dist <= 2 then
                wait = 1
                DrawMarker(6, v.x, v.y, v.z-1, 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 255, 70, 100, false, false, p19, false)
            end
            if dist <= 1.0 then
                wait = 1
                ESX.ShowHelpNotification("~INPUT_CONTEXT~ pour ouvrir la ~g~Supérette")
                if IsControlJustPressed(1,51) then
                    Superettes()
                end
            end 
        end
    Citizen.Wait(wait)
    end
end)