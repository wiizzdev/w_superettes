    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end
end)

local mainMenu = RageUI.CreateMenu("", "Supérette", 0, 0, "w_shops", "shopbanner")
local manger = RageUI.CreateSubMenu(mainMenu, "", "Nourriture")
local boire = RageUI.CreateSubMenu(mainMenu, "", "Boissons")
local media = RageUI.CreateSubMenu(mainMenu, "", "Médias")
local paiement = RageUI.CreateSubMenu(mainMenu, "", "Méthode de Paiement")
local open = false

mainMenu.Display.Glare,manger.Display.Glare,boire.Display.Glare,media.Display.Glare,paiement.Display.Glare = false,false,false,false,false

mainMenu.Closed = function() open = false end 

function Superette()
    if not open then open = true RageUI.Visible(mainMenu, true)
        Citizen.CreateThread(function()
            while open do 
                RageUI.IsVisible(mainMenu, function()
                    if Config.Superette.ActiverNourriture then RageUI.Button("Nourriture", nil, {RightLabel = "→"}, true, {}, manger) end
                    if Config.Superette.ActiverBoissons then RageUI.Button("Boissons", nil, {RightLabel = "→"}, true, {}, boire) end
                    if Config.Superette.ActiverMedias then RageUI.Button("Médias", nil, {RightLabel = "→"}, true, {}, media) end
                    RageUI.Separator("discord.gg/VpYP58ZjmD")
                end)
                RageUI.IsVisible(manger, function()
                    for _,v in pairs(Config.Superette.List.Nourriture) do
                        RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                            onSelected = function()
                                nameitem = v.name
                                priceitem = v.price
                                ESX.TriggerServerCallback('w_shops:checkcarte', function(confirmation)
                                    if not confirmation then joueuraunecarte = false else joueuraunecarte = true end
                                end)
                            end
                        }, paiement)
                    end
                end)
                RageUI.IsVisible(boire, function()
                    for _,v in pairs(Config.Superette.List.Boissons) do
                        RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                            onSelected = function()
                                nameitem = v.name
                                priceitem = v.price
                                ESX.TriggerServerCallback('w_shops:checkcarte', function(confirmation)
                                    if not confirmation then joueuraunecarte = false else joueuraunecarte = true end
                                end)
                            end
                        }, paiement)
                    end
                end)
                RageUI.IsVisible(media, function()
                    for _,v in pairs(Config.Superette.List.Medias) do
                        RageUI.Button(v.label, nil, {RightLabel = "~g~"..v.price.."$"}, true, {
                            onSelected = function()
                                nameitem = v.name
                                priceitem = v.price
                                ESX.TriggerServerCallback('w_shops:checkcarte', function(confirmation)
                                    if not confirmation then joueuraunecarte = false else joueuraunecarte = true end
                                end)
                            end
                        }, paiement)
                    end
                end)
                RageUI.IsVisible(paiement, function()
                    RageUI.Button("Payer en ~g~Liquide", nil, {RightLabel = "→"}, true, {
                        onSelected = function() 
                            liquide = true
                            TriggerServerEvent('w_shops:achatitem', nameitem, priceitem, liquide)
                         end
                    })
                    if Config.UtiliserCarteBancaire then
                        if joueuraunecarte then
                            RageUI.Button("Payer en ~b~Banque", nil, {RightLabel = "→"}, true, {
                                onSelected = function() 
                                    liquide = false
                                    TriggerServerEvent('w_shops:achatitem', nameitem, priceitem, liquide)
                                end
                            })
                        else
                            RageUI.Button("Payer en ~b~Banque", "~r~Vous devez avoir une carte bancaire", {}, false, {})
                        end
                    else
                        RageUI.Button("Payer en ~g~Banque", nil, {RightLabel = "→"}, true, {
                            onSelected = function() 
                                liquide = false
                                TriggerServerEvent('w_shops:achatitem', nameitem, priceitem, liquide)
                            end
                        })
                    end
                end)
            Wait(0)
            end
        end)
    end
end

Citizen.CreateThread(function()
    while true do
        local wait = 900
        for k,v in pairs(Config.Superette.Pos) do
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
                    Superette()
                end
            end 
        end
    Citizen.Wait(wait)
    end
end)

Citizen.CreateThread(function() 
    for k,v in pairs(Config.Superette.Pos) do
        if Config.Superette.ActiverBlips then
            local blip = AddBlipForCoord(v.x, v.y, v.z)
            SetBlipSprite(blip, Config.Superette.BlipsId)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, Config.Superette.BlipsScale)
            SetBlipColour(blip, Config.Superette.BlipsColor)
            SetBlipAsShortRange(blip, true) 
            BeginTextCommandSetBlipName('STRING') 
            AddTextComponentSubstringPlayerName(Config.Superette.BlipsName)
            EndTextCommandSetBlipName(blip)
        end
    end
end)
