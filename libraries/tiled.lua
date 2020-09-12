local tiled = {}

local debug = require("libraries.debug")
local animation = require("libraries.animation")
physics = require("libraries.physics")

-- Game Objects --

local dir = "data.classes.entities"

local Player = require(dir .. ".player")
local Tile   = require(dir .. ".tile")
local Border = require(dir .. ".border")

dir = "data.classes.prefabs"

local Bed   = require(dir .. ".bed")
local Clock = require(dir .. ".clock")
------------------

tiled.CONST_MAP_DIR = "data/maps/lua"

function tiled.init()
    -- map listing
    tiled.maps = {}

    if love.filesystem.getInfo(tiled.CONST_MAP_DIR) then
        local items = love.filesystem.getDirectoryItems(tiled.CONST_MAP_DIR)

        for i = 1, #items do
            if items[i]:find(".lua") then
                local name = items[i]:gsub(".lua", "")
                local dir = tiled.CONST_MAP_DIR:gsub("/", "%.")

                tiled.maps[name] = require(dir .. "." .. name)
            end
        end
    end
end

function tiled.clear()
    tiled.data = {}

    tiled.transitionColor = nil
    tiled.transitionFade = 1
    tiled.doTransition = false
    tiled.transitionRate = 1
end

function tiled.transition(enable, color, rate)
    if color then
        tiled.transitionColor = color
    end

    tiled.doTransition = enable

    if rate then
        tiled.transitionRate = rate
    end
end

local offset = 8

function tiled.loadMap(name)
    tiled.clear()


    name = tostring(name)
    local data = tiled.maps[name]

    tiled.width = data.width * 32
    tiled.height = (data.height * 32) - offset

    for index = 1, #data.layers do
        if data.layers[index].type:find("object") then
            for entityIndex = 1, #data.layers[index].objects do
                local entityData = data.layers[index].objects[entityIndex]
                local entity, name, properties = nil, entityData.name, entityData.properties

                entity = tiled.loadEntity(name, entityData, properties)

                table.insert(tiled.data, entity)
            end
        end
    end

    table.insert(tiled.data, Border(0, 0, 1, tiled.height))
    table.insert(tiled.data, Border(tiled.width, 0, 1, tiled.height))

    local properties = data.properties

    if properties.matrix then
        tiled.dynamicBackground = Background()
    end

    if love.filesystem.getInfo("data/maps/backdrop/" .. name .. ".png") then
        tiled.background = love.graphics.newImage("data/maps/backdrop/" .. name .. ".png")
    end

    animation.start(properties.script)

    physics:init(tiled.data)

    tiled.interactive = physics:getEntitiesByProperty("interactive")
end

function tiled.loadEntity(name, entityData, properties)
    local entity = nil

    if name == "player" then
        entity = Player(entityData.x, entityData.y - offset)
    elseif name == "tile" then
        entity = Tile(entityData.x, entityData.y - offset, entityData.width, entityData.height)
    elseif name == "bed" then
        entity = Bed(entityData.x, entityData.y - 2 - offset)
    elseif name == "clock" then
        entity = Clock(entityData.x, entityData.y - offset)
    end

    return entity
end

--[[
---- Spawns an Entity @entity
---- @entity: Entity class (usually already created and passed directly)
---- Used for dynamic map Entity loading (conditional stuff, etc)
--]]
function tiled.addEntity(entity)
    physics:addEntity(entity)
    table.insert(tiled.data, entity)
end

function tiled.removeEntity(entity, index)
    physics:removeEntity(entity)
    table.remove(tiled.data, index)
end

function tiled.getEntity(name, all)
    return physics:getEntity(name, all)
end

function tiled.update(dt)
    animation.update(dt)

    if tiled.doTransition ~= nil then
        if tiled.doTransition then
            tiled.transitionFade = math.min(tiled.transitionFade + tiled.transitionRate * dt, 1)
        else
            tiled.transitionFade = math.max(tiled.transitionFade - tiled.transitionRate * dt, 0)
        end
    end

    physics:update(dt)

    if tiled.dynamicBackground then
        tiled.dynamicBackground:update(dt)
    end

    for index, value in ipairs(tiled.data) do
        if value:remove() then
            tiled.removeEntity(value, index)
        end
    end
end

function tiled.draw()
    if tiled.dynamicBackground then
        love.graphics.setColor(1, 1, 1, 0.25)
        tiled.dynamicBackground:draw()
    end

    if tiled.background then
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.draw(tiled.background, -16, -8)
    end

    love.graphics.setColor(1, 1, 1, 1)
    for _, value in pairs(tiled.data) do
        if value.flags.noDraw then
            return
        end
        value:draw()
    end

    if tiled.transitionFade > 0 and tiled.transitionColor then
        local r, g, b = unpack(tiled.transitionColor)

        love.graphics.setColor(r, g, b, tiled.transitionFade)
        love.graphics.rectangle("fill", 0, 0, vars.WINDOW_W, vars.WINDOW_H)
    end

    debug:draw(physics)
end

tiled.init()

return tiled
