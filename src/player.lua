local x, y = 0, 0

player = world:newRectangleCollider(x, y, 40, 40)

function player:load(X, Y)
    self:setPosition(X, Y)
    self:setFixedRotation(true)
    self.speed = 200
end

function player:update(dt)
    local vx = 0
    local vy = 0

    -- sprinting
    if love.keyboard.isDown("lshift") then
        self.speed = 300
    else
        self.speed = 200
    end

    if love.keyboard.isDown("d") then
        vx = self.speed * 1
    end

    if love.keyboard.isDown("a") then
        vx = self.speed * -1
    end

    if love.keyboard.isDown("w") then
        vy = self.speed * 1
    end

    if love.keyboard.isDown("w") then
        vy = self.speed * -1
    end

    if love.keyboard.isDown("s") then
        vy = self.speed * 1
    end

    cam:follow(self:getX(), self:getY())

    self:setLinearVelocity(vx, vy)
end