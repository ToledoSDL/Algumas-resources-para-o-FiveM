local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","xpk_elevador")


RegisterServerEvent("andar1")
AddEventHandler("andar1",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1067.29,-831.65,19.04)
    end
end)

RegisterServerEvent("andar2")
AddEventHandler("andar2",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.58,-848.49,23.04)
    end
end)

RegisterServerEvent("andar3")
AddEventHandler("andar3",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.56,-848.42,26.83)
    end
end)

RegisterServerEvent("andar4")
AddEventHandler("andar4",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.58,-848.51,30.76)
    end
end)

RegisterServerEvent("andar5")
AddEventHandler("andar5",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.77,-848.63,34.37)
    end
end)

RegisterServerEvent("andar6")
AddEventHandler("andar6",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1096.26,-850.74,38.25)
    end
end)

RegisterServerEvent("andar-3")
AddEventHandler("andar-3",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.72,-848.45,13.69)
    end
end)

RegisterServerEvent("andar-2")
AddEventHandler("andar-2",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.75,-848.63,10.28)
    end
end)

RegisterServerEvent("andar-1")
AddEventHandler("andar-1",function()
local user_id = vRP.getUserId(source)
local player = vRP.getUserSource(user_id)
    if user_id then
        vRPclient.teleport(source,-1097.7,-848.38,4.89)
    end
end)
