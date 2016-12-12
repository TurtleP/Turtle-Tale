file = class("file")

function file:init(y, i)
    self.x = 160 - 96
    self.y = y
    self.width = 192
    self.height = 48

	self.i = i
	
    self.data = saveManager:getSaveData(i)
end

function file:update(dt)

end

function file:draw()
    love.graphics.setScreen("bottom")

    --love.graphics.rectangle("line", self.x, self.y, self.width, self.height)

    if not self.data then
		love.graphics.setFont(menuFont)
		
        love.graphics.print("NEW FILE", self.x + (self.width / 2) - menuFont:getWidth("NEW FILE") / 2, (self.y + (self.height / 2)) - menuFont:getHeight() / 2 + 8)
    else
		love.graphics.setFont(smallFont)
		
		love.graphics.print("FILE " .. self.i, self.x + (self.width / 2) - smallFont:getWidth("FILE " .. self.i) / 2, self.y + 4)
		
		for x = 1, self.data[2] do
			local offset = 0
			if x % 2 == 0 then
				offset = 4
			end

			love.graphics.draw(healthImage, healthQuads[1], (self.x + 2) + (x - 1) * 9, (self.y + 15) + offset)
		end
	
		love.graphics.print(self.data[1], self.x, self.y + self.height - smallFont:getHeight())
		
		--love.graphics.print(self.data[4], (self.x + self.width) - smallFont:getWidth(self.data[4]), self.y + 20)
		
		local ms = self:convertTime(self.data[3])
		love.graphics.print(ms, (self.x + self.width) - smallFont:getWidth(ms), (self.y + self.height) - smallFont:getHeight())
	end
end

function file:convertTime(seconds)
	local floor = math.floor
	
	local minutes = floor(seconds / 60)
	minutes = floor(minutes % 60)
	
	local hours = floor(minutes / 60)

	return string.format("%02d:%02d", hours, minutes)
end

function file:click(x, y)
    local pass = false

    if x and y then
        if aabb(x, y, 2, 2, self.x, self.y, self.width, self.height) then
            pass = true
        end
    else
        pass = true
    end

    if pass then
        util.changeState("game")
		saveManager:save(self.i, {os.date("%m.%d.%Y"), 3, 0})
    end
end

function file:inside(x, y)
    return aabb(x, y, 2, 2, self.x, self.y, self.width, self.height) 
end