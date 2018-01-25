local credits = class("credits")

function credits:load()
	self.y = SCREEN_HEIGHT
	self.speed = vector(0, 24)
	
	love.graphics.setBackgroundColor(22, 78, 122)

	self.music = love.audio.newSource("audio/music/phoenix.ogg", "stream")
	self.music:setLooping(true)
	self.music:play()

	self.background = love.graphics.newImage("graphics/backgrounds/sky.png")
	self.ground = love.graphics.newImage("data/maps/credits.png")

	self.treesImage = love.graphics.newImage("graphics/game/prefabs/tree.png")
	self.treesQuads = {}
	for i = 1, 2 do
		self.treesQuads[i] = love.graphics.newQuad((i - 1) * 31, 0, 31, 42, self.treesImage:getWidth(), self.treesImage:getHeight())
	end

	self.player = state.states["game"].player

	self.player:setPosition(40, SCREEN_HEIGHT - 30)
	self.player:changeState("walk")
	self.player.static = true

	self.clouds = {}
	self.cloudTimer = 0
	self.cloudDelay = 0.5

	self.trees = {}
	self.treeTimer = 0
	self.treeDelay = 1

	self.textFade = 0
	self.finishDelay = 1
	self.complete = false
end

function credits:update(dt)
	for i = 1, #CREDITS do
		CREDITS[i][3] = CREDITS[i][3] - self.speed.y * dt
	end

	self.player:update(dt)

	self.cloudTimer = self.cloudTimer + dt
	if self.cloudTimer > self.cloudDelay then
		table.insert(self.clouds, {index = math.random(1, 4), speed = math.random(30, 50), x = 320, y = math.random(SCREEN_HEIGHT * 0.4)})
		self.cloudDelay = math.random(1, 2)
		self.cloudTimer = 0
	end

	self.treeTimer = self.treeTimer + dt
	if self.treeTimer > 10 then
		table.insert(self.trees, {index = math.random(2), speed = 20, x = 320, y = SCREEN_HEIGHT - 16 - 42})
		self.treeTimer = self.treeTimer - 10
	end
	
	for i, v in ipairs(self.clouds) do
		v.x = v.x - v.speed * dt
		if v.x < -cloudImages[v.index]:getWidth() then
			table.remove(self.clouds, i)
		end
	end

	for i, v in ipairs(self.trees) do
		v.x = v.x - v.speed * dt
		if v.x < -31 then
			table.remove(self.trees, i)
		end
	end

	if CREDITS[#CREDITS][2] == "top" and not self.complete then
		self.player:moveRight(true)
		self.complete = true
	end

	if self.complete then
		self.finishDelay = self.finishDelay - dt
		if self.finishDelay < 0 and self.player.x > BOTSCREEN_WIDTH then
			self.textFade = math.min(self.textFade + dt, 1)
		end
	end
end

function credits:draw()
	love.graphics.setScreen("top")
	love.graphics.draw(bannerImage, (TOPSCREEN_WIDTH - bannerImage:getWidth()) / 2, (SCREEN_HEIGHT - bannerImage:getHeight()) / 2)

	love.graphics.setScreen("bottom")
	love.graphics.draw(self.background)

	for i, v in ipairs(self.trees) do
		love.graphics.draw(self.treesImage, self.treesQuads[v.index], v.x, v.y)
	end

	for i = 1, #CREDITS do
		if CREDITS[i][3] + (i - 1) * 20 < -gameFont:getHeight() and CREDITS[i][2] == "bottom" then
			CREDITS[i][2] = "top"
		end

		love.graphics.setColor(0, 0, 0)
		love.graphics.print(CREDITS[i][1], (BOTSCREEN_WIDTH - gameFont:getWidth(CREDITS[i][1])) / 2 - 1, CREDITS[i][3] + (i - 1) * 20 - 1)
		
		love.graphics.setColor(255, 255, 255)
		love.graphics.print(CREDITS[i][1], (BOTSCREEN_WIDTH - gameFont:getWidth(CREDITS[i][1])) / 2, CREDITS[i][3] + (i - 1) * 20)
	end

	love.graphics.setColor(0, 0, 0, 255 * self.textFade)
	love.graphics.print("END", (BOTSCREEN_WIDTH - gameFont:getWidth("END")) / 2 - 1, (SCREEN_HEIGHT - gameFont:getHeight()) / 2 - 1)

	love.graphics.setColor(255, 255, 255, 255 * self.textFade)
	love.graphics.print("END", (BOTSCREEN_WIDTH - gameFont:getWidth("END")) / 2, (SCREEN_HEIGHT - gameFont:getHeight()) / 2)

	love.graphics.setColor(255, 255, 255, 255)

	for i, v in ipairs(self.clouds) do
		love.graphics.draw(cloudImages[v.index], v.x, v.y)
	end

	self.player:draw()
	love.graphics.draw(self.ground, 0, SCREEN_HEIGHT - 16)
end

function credits:destroy()
	self.music = nil
	self.background = nil
	self.ground = nil
	self.player.static = false
	self.treesQuads = nil
	self.treesImage = nil
end

return credits