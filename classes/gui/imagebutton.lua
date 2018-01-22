imagebutton = class("imagebutton", guiBase)

function imagebutton:initialize(image, button, text, x, y, width, height, flags)
	guiBase.initialize(self, x, y, width, height, flags)
	
	self.image = image
	self.button = button
	self.text = text

	self.width = (self.image:getWidth() + self.padding + gameFont:getWidth(text))
end

function imagebutton:draw()
	love.graphics.push()

	if self.center then
		love.graphics.translate(self.offset.x - self.width / 2, 0)
	end

	love.graphics.draw(self.image, self.x, self.y)
	love.graphics.print(self.button, self.x + gameFont:getWidth(self.button) / 2, self.y + (self.height - gameFont:getHeight()) / 2 - self.padding)
	love.graphics.print(self.text, self.x + self.image:getWidth() + self.padding, self.y)

	love.graphics.pop()
end

function imagebutton:keypressed(key)
	if key == self.button then
		self.func()
	end
end