---@class Vehicle
local Vehicle <const> = {}
local Shared = require('shared.shared')
Vehicle.__index = Vehicle

---Creates a new Vehicle instance
---@return Vehicle
function Vehicle.new(plat)
    local self = setmetatable({}, Vehicle)
    
    return self
end

---Generates a random vehicle plate in the format "NGK 920"
---@return string
function Vehicle:generatePlate()
    local plate = ""

    for i = 1, 3 do
        plate = plate .. string.char(math.random(65, 90))
    end

    plate = plate .. " "

    for i = 1, 3 do
        plate = plate .. tostring(math.random(0, 9))
    end

    return plate
end


---Creates a vehicle properties table with all data
---@param plate string
---@param model string
---@return table
function Vehicle:createVehicleProperties(plate, model)
    local vehicleData = Shared.defaultVehicleData

    vehicleData['model'] = joaat(model)
    vehicleData['plate'] = plate

    return vehicleData
end

---Saves vehicle to database
---@param vehicleProperties table Vehicle properties
---@param vehicleOwner string Vehicle owner (set identifier)
---@param vehicleType string Vehicle type (car, boat, plane)
---@return boolean
function Vehicle:saveVehicletoDB(vehicleProperties, vehicleOwner, vehicleType)
    local success, result = xpcall(function()
        local query = [[
            INSERT INTO owned_vehicles (owner, plate, vehicle, type)
            VALUES (@owner, @plate, @vehicle, @type)
        ]]

        local queryData = {
            ['@owner'] = vehicleOwner,
            ['@plate'] = vehicleProperties['plate'],
            ['@vehicle'] = json.encode(vehicleProperties),
            ['@type'] = vehicleType
        }

        MySQL.Async.execute(query, queryData) 
    end, function(err)
        print(('There was an error saving the vehicle to the database: %s'):format(err))
    end)

    return success
end

return Vehicle
