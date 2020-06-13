local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPg = Proxy.getInterface("xpk_elevador")

local open = false
function killTutorialMenu()
SetNuiFocus( false, false )
    SendNUIMessage({
      infos = false
    })
    open = false
end


Citizen.CreateThread(function()
  while true do
    if isNearInfos() then
      if IsControlJustPressed(1, 38) then
        if not open then
          SetNuiFocus(true,true)
          SendNUIMessage({
            infos = true
          })
          open = true
        end
      end
    end
    Citizen.Wait(3)
  end
end)


function isNearInfos()
  local ply = GetPlayerPed(-1)
  local plyCoords = GetEntityCoords(ply, 0)
  for _, item in pairs(cfg.infos) do
    local distance = GetDistanceBetweenCoords(item.x, item.y, item.z,  plyCoords["x"], plyCoords["y"], plyCoords["z"], true)
    if(distance <= 2) then
      return true
    end
  end
end

RegisterNUICallback('andar1', function(data, cb)
TriggerServerEvent("andar1")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)


RegisterNUICallback('andar2', function(data, cb)
TriggerServerEvent("andar2")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)


RegisterNUICallback('andar3', function(data, cb)
TriggerServerEvent("andar3")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)


RegisterNUICallback('andar4', function(data, cb)
TriggerServerEvent("andar4")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)


RegisterNUICallback('andar5', function(data, cb)
TriggerServerEvent("andar5")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)


RegisterNUICallback('andar6', function(data, cb)
TriggerServerEvent("andar6")
killTutorialMenu()  
Fade(1200)    
cb('ok')
end)

RegisterNUICallback('andar-1', function(data, cb)
TriggerServerEvent("andar-1")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)

RegisterNUICallback('andar-2', function(data, cb)
TriggerServerEvent("andar-2")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)

RegisterNUICallback('andar-3', function(data, cb)
TriggerServerEvent("andar-3")
killTutorialMenu()    
Fade(1200)    
  cb('ok')
end)
    


RegisterNUICallback('close', function(data, cb)
    killTutorialMenu()    
    cb('ok')
end)

function Fade(time)
	DoScreenFadeOut(800)
	Wait(time)
	DoScreenFadeIn(800)
end