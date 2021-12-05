    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

Citizen.CreateThread(function()
   while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5000)
    end
end)

-- MENU
local mainMenu = RageUI.CreateMenu("", "achetez ce que vous souhaitez") -- menu principal
local manger = RageUI.CreateSubMenu(mainMenu, "", "une petite faim ?") -- sous-menu nourriture
local boire = RageUI.CreateSubMenu(mainMenu, "", "une petite soif ?") -- sous-menu boissons
local shop = false

mainMenu.X = 0 -- position x du menu (1450 pour la droite de l'écran)
mainMenu.Y = 0 -- position y du menu (780 pour le bas de l'écran)

mainMenu.Closed = function() 
    shop = false 
end 

function shops() -- function qui fait le menu
    if shop then 
        shop = false 
            RageUI.Visible(mainMenu, false) 
        return 
    else 
        shop = true 
            RageUI.Visible(mainMenu, true)
        Citizen.CreateThread(function()
            while shop do 
                RageUI.IsVisible(mainMenu, function()
                    RageUI.Button("Nourriture", nil, {RightLabel = "→"}, true, {}, manger) -- bouton du menu principal
                    RageUI.Button("Boissons", nil, {RightLabel = "→"}, true, {}, boire) -- bouton du menu principal
                    RageUI.Separator("discord.gg/VpYP58ZjmD") -- lien discord affiché en bas du menu
                end)
                RageUI.IsVisible(manger, function()
                    RageUI.Button("Pain", "Acheter du pain", {RightLabel = config.prixitemmanger1}, true, { -- bouton du menu manger
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatPain') -- éxécuter l'event achatPain => personnalisable dans le server.lua
                        end
                    })
                    RageUI.Button("Sandwich", "Acheter un sandwich", {RightLabel = config.prixitemmanger2}, true, { -- bouton du menu manger
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatSandwich') -- éxécuter l'event achatSandwich => personnalisable dans le server.lua
                        end
                    })
                    RageUI.Button("Chocolat", "Acheter du chocolat", {RightLabel = config.prixitemmanger3}, true, { -- bouton du menu manger
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatChocolat') -- éxécuter l'event achatChocolat => personnalisable dans le server.lua
                        end
                    })
                end)
                RageUI.IsVisible(boire, function()
                    RageUI.Button("Eau", "Acheter de l'eau", {RightLabel = config.prixitemboire1}, true, {
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatEau') -- éxécuter l'event achatSandwich => personnalisable dans le server.lua
                        end
                    })
                    RageUI.Button("Mojito", "Acheter du mojito", {RightLabel = config.prixitemboire2}, true, {
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatMojito') -- éxécuter l'event achatMojito => personnalisable dans le server.lua
                        end
                    })
                    RageUI.Button("Whisky", "Acheter du whisky", {RightLabel = config.prixitemboire3}, true, {
                        onSelected = function() -- si le joueur sélectionne ce bouton
                            TriggerServerEvent('wdev:achatWhisky') -- éxécuter l'event achatWhisky => personnalisable dans le server.lua
                        end
                    })
                end)
            Wait(0)
            end
        end)
    end
end

-- MARKERS

Citizen.CreateThread(function()
    while true do
      local wait = 900
        for k,v in pairs(Config.position) do
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, v.x, v.y, v.z)
            if dist <= 7 then -- distance entre le joueur et le marker auquel le marker s'affiche (augmenter ce chiffre peut augrandir la consommation du script)
                wait = 1 --                                                  __rotation__  ___taille____
                DrawMarker(config.markertype, v.x, v.y, v.z, 0.0, 0.0, 0.0, -90.0,0.0,0.0, 1.1, 1.5, 1.1, config.red, config.green, config.blue, config.opacity, false, false, p19, false)  
            end
            if dist <= 1.1 then
                wait = 1
                --Visual.Subtitle("Appuyez sur ~g~[E]~w~ pour intéragir", 1) -- a activer si vous souhaitez un texte en bas de l'écran
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_CONTEXT~ pour intéragir") -- a commenter si vous avez activé la ligne au dessus
                if IsControlJustPressed(1,51) then
                    shops() -- ouvrir le menu principal
                end
            end 
        end
    Citizen.Wait(wait)
    end
end)

-- BLIPS

Citizen.CreateThread(function() 
    for k, v in pairs(Config.position) do 
        local blip = AddBlipForCoord(v.x, v.y, v.z) -- coordonées a changer dans le config.lua
                     SetBlipSprite  (blip, config.blipsprite) -- logo a changer dans le config.lua
                     SetBlipDisplay (blip, config.blipdisplay) -- affichage a changer dans le config.lua
                     SetBlipScale   (blip, config.blipscale) -- taille a changer dans le config.lua
                     SetBlipColour  (blip, config.blipcolour) -- couleur a changer dans le config.lua
                     SetBlipAsShortRange(blip, true) 
                     BeginTextCommandSetBlipName('STRING') 
                     AddTextComponentSubstringPlayerName(config.blipname) -- nom a changer dans le config.lua
                     EndTextCommandSetBlipName(blip) 
    end 
end)