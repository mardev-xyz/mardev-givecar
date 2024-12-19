local Shared = require('shared.shared')
local VehicleClass = require('src.server.classes.vehicleClass')

---@description Give player vehicle
lib.addCommand('givevehicle', {
    help = 'Gives a vehicle to a player',
    params = {
        {
            name = 'target',
            type = 'playerId',
            help = 'Target player\'s server id',
        },
        {
            name = 'vehicle',
            type = 'string',
            help = 'Vehicle model name',
        }
    },
    restricted = Shared.RestrictedGroups['car']
}, function(source, args, raw)
    local Vehicle = VehicleClass.new()
    local plate = Vehicle:generatePlate()
    local vehicleProperties = Vehicle:createVehicleProperties(plate, args.vehicle)
    local vehicleOwner = GetPlayerIdentifierByType(source, Shared.Identifier)

    if not Vehicle:saveVehicletoDB(vehicleProperties, vehicleOwner, 'car') then
        return lib.notify(source, {
            title = 'Car',
            description = 'Something went wrong while giving the vehicle, check server-console for more information.',
            type = 'error'
        })
    end

    lib.notify(source, {
        title = 'Car',
        description = ('Vehicle (%s) given to player %s with plate %s'):format(args.vehicle, args.target, plate),
        type = 'success'
    })
end)

---@description Give player boat
lib.addCommand('giveboat', {
    help = 'Gives a boat to a player',
    params = {
        {
            name = 'target',
            type = 'playerId',
            help = 'Target player\'s server id',
        },
        {
            name = 'boat',
            type = 'string',
            help = 'Boat model name',
        }
    },
    restricted = Shared.RestrictedGroups['boat']
}, function(source, args, raw)
    local Vehicle = VehicleClass.new()
    local plate = Vehicle:generatePlate()
    local vehicleProperties = Vehicle:createVehicleProperties(plate, args.vehicle)
    local vehicleOwner = GetPlayerIdentifierByType(source, Shared.Identifier)

    if not Vehicle:saveVehicletoDB(vehicleProperties, vehicleOwner, 'boat') then
        return lib.notify(source, {
            title = 'Car',
            description = 'Something went wrong while giving the boat, check server-console for more information.',
            type = 'error'
        })
    end

    lib.notify(source, {
        title = 'Car',
        description = ('Boat (%s) given to player %s with plate %s'):format(args.vehicle, args.target, plate),
        type = 'success'
    })
end)

---@description Give player plane
lib.addCommand('giveplane', {
    help = 'Gives a plane to a player',
    params = {
        {
            name = 'target',
            type = 'playerId',
            help = 'Target player\'s server id',
        },
        {
            name = 'plane',
            type = 'string',
            help = 'Plane model name',
        }
    },
    restricted = Shared.RestrictedGroups['plane']
}, function(source, args, raw)
    local Vehicle = VehicleClass.new()
    local plate = Vehicle:generatePlate()
    local vehicleProperties = Vehicle:createVehicleProperties(plate, args.vehicle)
    local vehicleOwner = GetPlayerIdentifierByType(source, Shared.Identifier)

    if not Vehicle:saveVehicletoDB(vehicleProperties, vehicleOwner, 'plane') then
        return lib.notify(source, {
            title = 'Car',
            description = 'Something went wrong while giving the plane, check server-console for more information.',
            type = 'error'
        })
    end

    lib.notify(source, {
        title = 'Car',
        description = ('Plane (%s) given to player %s with plate %s'):format(args.vehicle, args.target, plate),
        type = 'success'
    })
end)