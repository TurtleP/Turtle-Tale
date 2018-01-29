tile = class("tile", object)

function tile:initialize(layer, x, y, width, height, properties)
	object.initialize(self, x, y, width, height)

	self.category = 1

	for k, v in pairs(properties) do
		if type(k) == "string" then
			self[k] = v
		end
	end

	self.active = false
	self.static = true

	self.speed = vector(0, 0)

	if self.breakable then
		self.active = true
	elseif self.ladder then
		self.static = false
	end

	table.insert(layer, self)
end

function tile:draw()
	if self.id then
		love.graphics.draw(gameTilesImage, gameTilesQuads[self.id], self.x, self.y)
	end
end