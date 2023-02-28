local blips = {
    -- Testing --
	
    { title = "PzTesting1", colour = 27, id = 590, x = -1395.66, y = -598.38, z = 30.32 },
	
	{ title = "PzTesting2", colour = 0, id = 628, x = -1253.44, y = -1474.56, z = 4.36 }
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.7)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)
