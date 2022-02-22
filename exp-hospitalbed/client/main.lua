ESX = nil 

Citizen.CreateThread(function() 
	while ESX == nil do 
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
		Citizen.Wait(1) 
	end 
		PlayerData = ESX.GetPlayerData() 
end) 
 
RegisterNetEvent('esx:playerLoaded') 
AddEventHandler('esx:playerLoaded', function(xPlayer) 
	PlayerData = xPlayer 
end) 
 
RegisterNetEvent('esx:setJob') 
AddEventHandler('esx:setJob', function(job) 
	PlayerData.job = job 
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(PlayerPedId())
		for k,v in pairs(Config.HospitalLocations) do
            if GetDistanceBetweenCoords(coords, v.Coords.x, v.Coords.y, v.Coords.z, true) < Config.DrawDistance then
                local location = v
                DrawText3D(v.Coords.x, v.Coords.y, v.Coords.z - 1.0, 'Press ~g~E~w~ to check in')
                if IsControlJustReleased(0, 38) then
                    TriggerServerEvent('exp-hospitalbed:keyPressed')
                end
			end
		end
	end
end)

-- Text

function DrawText3D(x,y,z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local p = GetGameplayCamCoords()
	local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
	local scale = (1 / distance) * 2
	local fov = (1 / GetGameplayCamFov()) * 100
	local scale = scale * fov
	if onScreen then
		  SetTextScale(0.35, 0.35)
		  SetTextFont(4)
		  SetTextProportional(1)
		  SetTextColour(255, 255, 255, 215)
		  SetTextEntry("STRING")
		  SetTextCentre(1)
		  AddTextComponentString(text)
		  DrawText(_x,_y)
		  local factor = (string.len(text)) / 370
		  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
	  end
end

-- Beds

RegisterNetEvent('exp-hospitalbed:bed')
AddEventHandler('exp-hospitalbed:bed', function()
	local ped = GetPlayerPed(-1)
	local pos = GetEntityCoords(ped)
	local head = GetEntityHeading(ped)
	local chance = math.random(1,8)

	if chance == 1 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 307.7677, -581.5367, 43.2040 + 1, 146.5217, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 307.7677, -581.5367, 44.2040, 146.5217, false, false, false, false)
				break
			end
		end
	end

	if chance == 2 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 311.2965, -582.7029, 43.2040 + 1, 154.2758, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 311.2965, -582.7029, 44.2040, 154.2758, false, false, false, false)
				break
			end
		end
	end

	if chance == 3 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 314.6593, -583.9557, 43.2040 + 1, 160.1931, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 314.6593, -583.9557, 44.2040, 160.1931, false, false, false, false)
				break
			end
		end
	end

	if chance == 4 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 317.7449, -585.0599, 43.2040 + 1, 156.3909, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 317.7449, -585.0599, 44.2040, 156.3909, false, false, false, false)
				break
			end
		end
	end

	if chance == 5 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 322.6682, -587.0293, 43.2039 + 1, 153.9143, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 322.6682, -587.0293, 44.2039, 153.9143, false, false, false, false)
				break
			end
		end
	end

	if chance == 6 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 324.1646, -582.9557, 43.2040 + 1, 337.9441, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 324.1646, -582.9557, 44.2040, 337.9441, false, false, false, false)
				break
			end
		end
	end

	if chance == 7 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 313.8340, -579.1774, 43.2040 + 1, 331.6960, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 313.8340, -579.1774, 44.2040, 331.6960, false, false, false, false)
				break
			end
		end
	end

	if chance == 8 then 
		TaskStartScenarioAtPosition(ped, 'WORLD_HUMAN_SUNBATHE_BACK', 309.3769, -577.3735, 43.2039 + 1, 337.6994, 0, false, true)
		FreezeEntityPosition(ped, true)
		exports['okokNotify']:Alert("inform", "Your wounds are being treated.", 40000, 'info')
		Citizen.Wait(40000)
		exports['okokNotify']:Alert("inform", "Press [F] to get out of bed.", 5000, 'info')
		while true do 
			Citizen.Wait(0)
			if IsControlJustReleased(0, 23) then 
				FreezeEntityPosition(ped, false) 
				ClearPedTasksImmediately(ped)
				TriggerServerEvent('exp-hospitalbed:takeMoney')
				exports['okokNotify']:Alert("inform", "You have been billed £250 for hospital services.", 4000, 'info')
				SetEntityHealth(ped, 200)
				SetEntityCoords(ped, 309.3769, -577.3735, 44.2039, 337.6994, false, false, false, false)
				break
			end
		end
	end
end)

-- Peds

CreateThread(function()
    for _, v in pairs(Config.Peds) do
        addNPC(v[1], v[2], v[3], v[4], v[5], v[6], v[7], v[8])
    end
end)

function addNPC(x, y, z, heading, hash, model, animation)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do
        Wait(15)
    end
    RequestAnimDict(animation)
    while not HasAnimDictLoaded(animation) do
        Wait(15)
    end
    ped = CreatePed(4, hash, x, y, z - 1, 3374176, false, true)
    SetEntityHeading(ped, heading)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskPlayAnim(ped, animation, "base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
end