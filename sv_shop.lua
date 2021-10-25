ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--- Nourritures

RegisterNetEvent('buyPain')
AddEventHandler('buyPain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('pain', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Pain ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end                                                      
end)

RegisterNetEvent('buyHamburger')
AddEventHandler('buyHamburger', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hamburger', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Hamburger ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end                                                      
end)

RegisterNetEvent('buySandwich')
AddEventHandler('buySandwich', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sandwich', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Sandwich ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end                                                      
end)


--- Boissons

RegisterNetEvent('buyEau')
AddEventHandler('buyEau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('eau', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Eau ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

RegisterNetEvent('buyIceTea')
AddEventHandler('buyIceTea', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 35
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('icetea', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x IceTea ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

RegisterNetEvent('buyCoca')
AddEventHandler('buyCoca', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 35
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('coca', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Coca-Cola ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

RegisterNetEvent('buyFanta')
AddEventHandler('buyFanta', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 35
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('fanta', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Fanta ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

RegisterNetEvent('buyDrpepper')
AddEventHandler('buyDrpepper', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 35
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('drpepper', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheté ~b~1x Dr.Pepper ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

--- Divers

RegisterNetEvent('BuyPhone')
AddEventHandler('BuyPhone', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 800
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('tel', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheter ~b~1 Téléphone ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

RegisterNetEvent('BuyMalboro')
AddEventHandler('BuyMalboro', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('malbora', 1)
         TriggerClientEvent('esx:showNotification', source, "~g~Vous avez ~w~ acheter ~b~1 Cigarette ~w~ pour ~g~$"..price.." !")
    else
         TriggerClientEvent('esx:showNotification', source, "~r~Il vous manque $~g~"..price-xMoney.."~w~!")
    end
end)

