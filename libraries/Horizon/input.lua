-- Clamps a number to within a certain range.
local function clamp(low, n, high)
	return math.min(math.max(low, n), high)
end

--KEY EVENTS
local oldKeyPressed = love.keypressed
function love.keypressed(key)
	for j, w in pairs(CONFIG.KEYS) do
		if key == w then
			if oldKeyPressed then
				oldKeyPressed(j)
				break
			end
		end
	end
end

local oldKeyReleased = love.keyreleased
function love.keyreleased(key)
	for j, w in pairs(CONFIG.KEYS) do
		if key == w then
			if oldKeyReleased then
				oldKeyReleased(j)
				break
			end
		end
	end
end

local oldKeyIsDown = love.keyboard.isDown
function love.keyboard.isDown(key)
	local button
	for j, w in pairs(CONFIG.KEYS) do
		if key == j then
			button = w
			break
		end
	end

	if button then
		return oldKeyIsDown(button)
	else
		return false
	end
end

local oldMouseGetX = love.mouse.getX
function love.mouse.getX()
	local x = oldMouseGetX()

	x = clamp(0, x - 40, 320)

	return x
end

local oldMouseGetY = love.mouse.getY
function love.mouse.getY()
	local y = oldMouseGetY()

	y = clamp(0, y - 240, 240)

	return y
end

local oldMouseGetPosition = love.mouse.getPosition
function love.mouse.getPosition()
	local x, y = oldMouseGetPosition()

	x, y = clamp(0, x - 40, 320), clamp(0, y - 240, 240)

	return x, y
end

--MOUSE EVENTS
local oldMousePressed = love.mousepressed
function love.mousepressed(x, y, button)
	local x, y = love.mouse.getPosition()

	if oldMousePressed then
		oldMousePressed(x, y, 1)
	end
end

local oldMouseReleased = love.mousereleased
function love.mousereleased(x, y, button)
	local x, y = love.mouse.getPosition()

	if oldMouseReleased then
		oldMouseReleased(x, y, 1)
	end
end

local oldMouseIsDown = love.mouse.isDown
function love.mouse.isDown(button)
	local x, y = love.mouse.getPosition()

	if oldMouseIsDown(1) and x > 0 and x <= 320 and y > 0 and y <= 240 then
		return true
	end
	return false
end

local oldMouseMoved = love.mousemoved
function love.mousemoved(x, y, dx, dy)
	local x, y = love.mouse.getPosition()
	
	if oldMouseMoved and oldMouseIsDown(1) then
		oldMouseMoved(x, y, dx, dy)
	end
end