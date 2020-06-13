local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("xpk_time")

src = {}
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP")
Tunnel.bindInterface("xpk_time", src)
Proxy.addInterface("xpk_time", src)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1*60000)
        func.updateTime(1)
    end
end)