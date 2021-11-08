ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)


local nkshop = {
	Base = { Header = {"shopui_title_conveniencestore", "shopui_title_conveniencestore"}, Title = "Supérette"},
	Data = { currentMenu = "Supérette", "" },
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
            PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local slide = btn.slidenum
			local btn = btn.name
			local check = btn.unkCheckbox
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			local playerPed = PlayerPedId()
            local coords = GetEntityCoords(playerPed)

			if btn == "Nourritures" then
				OpenMenu('Nourritures')
			elseif btn == "Boissons" then
				OpenMenu('Boissons')
			elseif btn == "Autres" then
				OpenMenu('Autres')

		elseif btn == "Pain" then
			TriggerServerEvent('buyPain') 
			
		elseif btn == "Hamburger" then
			TriggerServerEvent('buyHamburger')

          elseif btn == "Sandwich" then
			TriggerServerEvent('buySandwich') 
			
		elseif btn == "Eau" then
			TriggerServerEvent('buyEau') 

		elseif btn == "IceTea" then
			TriggerServerEvent('buyIceTea') 

          elseif btn == "Téléphone" then
			TriggerServerEvent('BuyPhone') 

          elseif btn == "Malboro" then
			TriggerServerEvent('BuyMalboro') 

          elseif btn == "~r~Retour~s~" then
               self:Back()

		end
	end, 
},

Menu = {
	["Supérette"] = {
		b = {
			{name = "Nourritures", ask = "~b~>", askX = true},
			{name = "Boissons", ask = "~b~>", askX = true},
			{name = "Autres", ask = "~b~>", askX = true}
		}
	},

     ["Nourritures"] = {
		b = {
			{name = "Pain", ask = "~b~>", askX = true},
			{name = "Hamburger", ask = "~b~>", askX = true},
			{name = "Sandwich", ask = "~b~>", askX = true},
            {name = "~r~Retour~s~", ask = "", askX = true}
		}
	},

     ["Boissons"] = {
		b = {
			{name = "Eau", ask = "~b~>", askX = true},
			{name = "IceTea", ask = "~b~>", askX = true},
            {name = "~r~Retour~s~", ask = "", askX = true}
		}
	},

     ["Autres"] = {
		b = {
			{name = "Teléphone", ask = "~b~>", askX = true},
			{name = "Malboro", ask = "~b~>", askX = true},
            {name = "~r~Retour~s~", ask = "", askX = true}
		}
	},
    }
}


local pos = {
    {x = 25.82, y = -1345.49, z = 29.5},
    {x = 373.875,   y = 325.896,  z = 102.66},
	{x = 2557.458,  y = 382.282,  z = 107.722}, 
	{x = -3038.939, y = 585.954,  z = 6.97},
	{x = -3241.927, y = 1001.462, z = 11.850}, 
	{x = 547.431,   y = 2671.710, z = 41.176}, 
	{x = 1961.464,  y = 3740.672, z = 31.363}, 
	{x = 2678.916,  y = 3280.671, z = 54.261}, 
    {x = 1729.216,  y = 6414.131, z = 34.057}, 
    {x = 1135.808,  y = -982.281,  z = 45.45}, 
	{x = -1222.93, y = -906.99,  z = 11.35}, 
	{x = -1487.553, y = -379.107,  z = 39.163}, 
	{x = -2968.243, y = 390.910,   z = 14.054}, 
	{x = 1166.024,  y = 2708.930,  z = 37.167}, 
	{x = 1392.562,  y = 3604.684,  z = 33.995}, 
	{x = -1393.409, y = -606.624,  z = 29.319}, 
    {x = -48.519,   y = -1757.514, z = 28.47}, 
	{x = 1163.373,  y = -323.801,  z = 68.27}, 
	{x = -707.67,  y = -914.22,  z = 18.26}, 
	{x = -1820.523, y = 792.518,   z = 137.20},
	{x = 1698.388,  y = 4924.404,  z = 41.083}
}
 

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for k in pairs(pos) do

			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, pos[k].x, pos[k].y, pos[k].z)
			
			if dist <= 1.5 then
				ESX.ShowHelpNotification("Appuyez sur [~r~E~s~] pour parler avec ~g~Apu !")
				if IsControlJustPressed(1,38) then 
                    Citizen.Wait(500)
					CreateMenu(nkshop)
				end
			end
		end
	end
end)

----------------- Blips --------------

Citizen.CreateThread(function()

	for i=1, #Config.Shops, 1 do

		local blip = AddBlipForCoord(Config.Shops[i].x, Config.Shops[i].y, Config.Shops[i].z)

		SetBlipSprite (blip, 52)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.6)
		SetBlipColour (blip, 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Supérette")
        EndTextCommandSetBlipName(blip)
	end

end)
--------------------------- Display markers-------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(pos) do
				if(Config.Type ~= -1 and GetDistanceBetweenCoords(coords, pos[k].x, pos[k].y, pos[k].z, true) < Config.DrawDistance) then
                    DrawMarker(Config.Type, pos[k].x, pos[k].y, pos[k].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)




print ('^6(Crée par ^4Noa ^6& ^2Kadomish^6)') print ('^6https://discord.gg/QsyvdNwEzp%27')
print ('SLMD Dev : https://discord.gg/MteBTumu5J')
