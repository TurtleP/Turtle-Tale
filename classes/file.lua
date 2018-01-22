local file = class("file")

function file:initialize(data, i)
	self.x = (BOTSCREEN_WIDTH - 192) / 2
	self.y = 20 + (i - 1) * 62
	
	self.width = 192
	self.height = 40

	self.isNew = (data.date == nil)

	self.time = 0
	self.ID = i

	self.data = data
	self.selected = false
end

function file:delete()
	if self.isNew then
		return
	end

	save:writeData(self.ID, {})
	save:loadData()
	self.data = save:getData(self.ID)
	self.isNew = true
end

function file:tick(dt)
	self.time = self.time + dt
end

function file:update(dt)

end

function file:draw()
	local color = {128, 128, 128, 255}
	if self.selected then
		color = {255, 255, 255, 255}
	end

	love.graphics.setColor(color)

	if self.isNew then
		love.graphics.print("NEW FILE", self.x + (self.width - gameFont:getWidth("NEW FILE") - 1) / 2, self.y + (self.height - gameFont:getHeight()) / 2)
	else
		--date
		love.graphics.draw(calendarImage, self.x, self.y + 1)
		love.graphics.print(self.data.date, self.x + calendarImage:getWidth() + 2, self.y)

		--health
		for i = 1, self.data["player"].maxHealth do
			local quadi, add = 3, 0
			if i > self.data["player"].health then
				quadi = 4
			end

			if i % 2 == 0 then
				add = 4
			end

			local width = self.data["player"].maxHealth * 9
			love.graphics.draw(healthImage, healthQuads[quadi], self.x + (self.width - width) + (i - 1) * 9, self.y + add)
		end

		--playtime
		love.graphics.draw(clockImage, self.x, self.y + (self.height - 8))
		love.graphics.print(SecondsToClock(self.data["time"]), self.x + 11, self.y + (self.height - gameFont:getHeight()))

		--money image
		love.graphics.draw(moneyImage, moneyQuads[3], self.x + (self.width - gameFont:getWidth(moneyCount)) - 4, self.y + (self.height - 8))

		--money amount
		local moneyCount = self.data["player"].money
		love.graphics.print(moneyCount, self.x + (self.width - (gameFont:getWidth(moneyCount) + 2)), self.y + (self.height - gameFont:getHeight()))
	end

	love.graphics.setColor(255, 255, 255)
end

function file:select()
	state:change("game")
	
	if self.isNew then
		save:encode(self.ID)
	else
		save:import()
	end
end

function file:keypressed(key)
	if key == "a" then
		self:select()
	end
end

return file