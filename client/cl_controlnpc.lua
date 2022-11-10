local function ControlDensity()
    SetPedDensityMultiplierThisFrame(Config.PedDensity)
    SetVehicleDensityMultiplierThisFrame(Config.VehicleDensity)
    SetRandomVehicleDensityMultiplierThisFrame(Config.VehicleDensity)
    SetParkedVehicleDensityMultiplierThisFrame(Config.ParkedVehicleDensity)
    SetAmbientVehicleRangeMultiplierThisFrame(Config.VehicleRange)
    -- DON'T CHANGE THIS VALUE :
    SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
end

Citizen.CreateThread(function()
    while true do
        ControlDensity()
        Citizen.Wait(0)
    end
end)
