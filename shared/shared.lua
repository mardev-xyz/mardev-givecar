---@class Shared
local Shared <const> = { }

Shared.RestrictedGroups = {
    ['car'] = { 'group.admin' },
    ['boat'] = { 'group.mod' },
    ['plane'] = { 'group.mod' }
}

---@alias Identifier 'steam' | 'discord' | 'xbl' | 'live' | 'license' | 'license2' | 'ip' | 'fivem'
---@description Depending on what framework you use, you can get the identifier type
---@return string
Shared.Identifier = 'license'

---Default vehicle data
---@type table
Shared.defaultVehicleData = {
    modDial = -1,
    modTrimA = -1,
    modTrimB = -1,
    engineHealth = 1000,
    color1 = 0,
    modAPlate = -1,
    xenonColor = 255,
    modTurbo = false,
    modSuspension = -1,
    modStruts = -1,
    neonColor = { 255, 0, 255 },
    modAirFilter = -1,
    modDashboard = -1,
    fuelLevel = 65,
    modShifterLeavers = -1,
    modVanityPlate = -1,
    modRearBumper = -1,
    wheelColor = 117,
    neonEnabled = { false, false, false, false },
    modDoorSpeaker = -1,
    modFrontBumper = -1,
    dirtLevel = 7,
    modSpoilers = -1,
    modBrakes = -1,
    modFrame = -1,
    bodyHealth = 1000,
    modTransmission = -1,
    modTrunk = -1,
    color2 = 111,
    modHorns = -1,
    modHood = -1,
    modTank = -1,
    modArmor = -1,
    modGrille = -1,
    tyreSmokeColor = { 255, 255, 255 },
    windowTint = -1,
    modAerials = -1,
    wheels = 0,
    modLightbar = -1,
    modEngineBlock = -1,
    modDoorR = -1,
    tyreBurst = {
        ["0"] = false,
        ["1"] = false,
        ["4"] = false,
        ["5"] = false
    },
    modBackWheels = -1,
    modRightFender = -1,
    modFender = -1,
    modSteeringWheel = -1,
    doorsBroken = {
        ["0"] = false,
        ["1"] = false,
        ["2"] = false,
        ["3"] = false,
        ["4"] = false,
        ["5"] = false,
        ["6"] = false
    },
    modSideSkirt = -1,
    pearlescentColor = 112,
    modPlateHolder = -1,
    modEngine = -1,
    modSeats = -1,
    modHydrolic = -1,
    modSmokeEnabled = false,
    modXenon = false,
    extras = {},
    modFrontWheels = -1,
    modRoof = -1,
    modArchCover = -1,
    modSpeakers = -1,
    plateIndex = 0,
    tankHealth = 1000,
    modExhaust = -1,
    modOrnaments = -1,
    windowsBroken = {
        ["0"] = false,
        ["1"] = false,
        ["2"] = false,
        ["3"] = false,
        ["4"] = false,
        ["5"] = false,
        ["6"] = false,
        ["7"] = false
    },
    modLivery = -1
}

return Shared