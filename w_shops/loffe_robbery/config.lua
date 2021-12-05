Config = {}
Translation = {}

-- PEDS

Config.Shopkeeper = 416176080 -- hash du ped

-- COORDONEES

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, money = {5000, 15000}, cops = 0, blip = false, name = 'Braquage 1', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1134.25, -982.73, 45.41), heading = 277.332, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1222.26, -908.55, 11.32), heading = 34.654, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1485.97, -378.25, 39.16), heading = 134.986, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-2966.40, 390.50, 14.04), heading = 86.336, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-3038.87, 584.49, 6.90), heading = 16.722, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-3242.71, 999.95, 11.83), heading = 350.643, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1727.79, 6415.23, 34.03), heading = 237.870, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1697.62, 4923.12, 41.06), heading = 321.338, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(2678.15, 3279.27, 54.24), heading = 329.443, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1392.02, 3606.19, 33.98), heading = 198.687, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(549.14, 2671.23, 41.15), heading = 99.854, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1166.11, 2710.87, 37.15), heading = 180.121, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(2557.01, 380.76, 107.62), heading = 0.303, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1165.01, -324.10, 68.20), heading = 93.551, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-47.16, -1758.52, 28.42), heading = 47.141, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(-1819.28, 793.36, 137.08), heading = 127.693, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
    {coords = vector3(1959.95, 3740.10, 31.34), heading = 298.847, money = {7500, 20000}, cops = 0, blip = false, name = 'Braquage 2', cooldown = {hour = 0, minute = 30, second = 0}, robbed = false},
}

-- TRADUCTION

Config.Locale = 'fr'

Translation = {

    ['fr'] = {
        ['shopkeeper'] = 'Vendeur',
        ['robbed'] = "Je me suis fait braqué et je n'ai plus d'argent",
        ['cashrecieved'] = 'Tu as reçu:',
        ['currency'] = '$',
        ['scared'] = 'Intimidement',
        ['no_cops'] = "Il n'y a pas assez de policier en ligne !",
        ['cop_msg'] = 'Braquage en cours : Photo du suspect reçu',
        ['set_waypoint'] = 'Mettre un point sur le magasin ?',
        ['hide_box'] = 'Fermer',
        ['robbery'] = 'Braquage en cours',
        ['walked_too_far'] = 'Tu es sortis de la zone du braquage !'
    }
}