Citizen.CreateThread(function()
	while true do
        Citizen.Wait(1500)
        local ped = PlayerPedId()
		local distance = GetDistanceBetweenCoords(181.16, -968.79, 36.1,GetEntityCoords(ped),true)		
		if distance < 210 then			
			while true do
				Citizen.Wait(10)
				distance = GetDistanceBetweenCoords(181.16, -968.79, 40.1,GetEntityCoords(ped),true)
				if distance > 200 then
					break
				end
				xpkMarker(181.16, -968.79, 40.1, 25.5, 25.5, 35.5, "xpkmarker", "ditado")			
			end					
		end
	end
end)

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(1500)
        local ped = PlayerPedId()
		local distance = GetDistanceBetweenCoords(-100.88, 849.63, 235.53,GetEntityCoords(ped),true)		
		if distance < 210 then			
			while true do
				Citizen.Wait(10)
				distance = GetDistanceBetweenCoords(-100.88, 849.63, 235.53,GetEntityCoords(ped),true)
				if distance > 200 then
					break
				end
				xpkMarker2(-100.88, 849.63, 235.53, 2.5, 1.5, 0.4, "xpkmarker", "house")			
			end					
		end
	end
end)


function xpkMarker(x, y, z, sizex, sizey, sizez, src, id)
    if not HasStreamedTextureDictLoaded(src) then
        RequestStreamedTextureDict(src, true)
        while not HasStreamedTextureDictLoaded(src) do
            Wait(1)
        end
    else
        DrawMarker(1, x, y, z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, sizex, sizey, sizez, 255, 255, 255, 255,false, true, 2, true, src, id, false)
    end
end
function xpkMarker2(x, y, z, sizex, sizey, sizez, src, id)
    if not HasStreamedTextureDictLoaded(src) then
        RequestStreamedTextureDict(src, true)
        while not HasStreamedTextureDictLoaded(src) do
            Wait(1)
        end
    else
        DrawMarker(9, x, y, z, 0.0, 0.0, 0.0, 90.0, 90.0, 0.0, sizex, sizey, sizez, 255, 255, 255, 255,false, true, 2, true, src, id, false)
    end
end
