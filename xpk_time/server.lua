local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("xpk_time",src)
Proxy.addInterface("xpk_time",src)

function src.getTime(user_id, type)
    local Udata = vRP.getUData(user_id, "vRP:time")
    local data = json.decode(Udata) or {}
    if data[type] then
        return data[type].time
    end
    return false
end

function src.hasTime(user_id, type, time)
    local Udata = vRP.getUData(user_id, "vRP:time")
    local data = json.decode(Udata) or {}
    if data[type] then
        if data[type].time >= time then 
            return true
        end
        return false
    end
    return false
end

function src.setTime(user_id, type, time)
    local time = tonumber(time)
    local Udata = vRP.getUData(user_id, "vRP:time")
    local data = json.decode(Udata) or {}
    if data[type] then
        if data[type].time + time <= 0 then
            data[type].time = 0
        else
            data[type].time = data[type].time + time
        end
    else
        data[type] = {}
        if time >= 0 then
            data[type].time = time
            data[type].min = 0
        else
            data[type].min = 0
            data[type].time = 0
        end
    end
    vRP.setUData(user_id, "vRP:time", json.encode(data))
end

function src.getMin(user_id, type)
    local Udata = vRP.getUData(user_id, "vRP:time")
    local data = json.decode(Udata) or {}
    if data[type] then
        return data[type].min
    end
    return false
end

function src.setMin(user_id, type, min)
    local min = tonumber(min)
    local Udata = vRP.getUData(user_id, "vRP:time")
    local data = json.decode(Udata) or {}
    local source = vRP.getUserSource(user_id)
    if data[type] then
        if data[type].min + min <= 0 then     
            data[type].min = 0
        else
            if data[type].min + min >= 60 then
                local extraMIN = data[type].min + min - 60
                data[type].min = 0 + extraMIN
                data[type].time = data[type].time + 1
            else
                data[type].min = data[type].min + min
            end
        end
    else
        data[type] = {}
        if min >= 0 then
            if min >= 60 then
                local extraMIN = min - 60
                data[type].min = 0 + extraMIN
                data[type].time = data[type].time + 1 
            else
                data[type].min = min
                data[type].time = 0
            end
        else
            data[type].min = 0
            data[type].time = 0
        end
    end
    vRP.setUData(user_id, "vRP:time", json.encode(data))
end


RegisterCommand("vtime", function(source, args, rawcommand)
    local userId = vRP.getUserId(source)
    local targetId = userId
    local identity = vRP.getUserIdentity(userId)
    local data_time = {}
    if targetId then
        local Udata = vRP.getUData(targetId, "vRP:time")
        local data = json.decode(Udata)
        for k,v in pairs(data) do
            table.insert(data_time, "<b>Nome: </b>"..identity.name.." "..identity.firstname.." |<b>Tempo na cidade: </b> " ..v.time.. "<b> horas e </b>" ..v.min.. "<b> Minutos</b>")
        end
        data_time = table.concat(data_time, " ")
        TriggerClientEvent("Notify",source,"vtime","<b> " .. data_time, 40000)
    end
end)

function src.updateTime(h)
    local source = source
    local user_id = vRP.getUserId(source)
    src.setMin(user_id, 'time', h)
end
