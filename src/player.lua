player = {}

function player:load(X, Y)
    self.collider = world:newRectangleCollider(X, Y, 40, 40)
    self.collider:setFixedRotation(true)
    self.speed = 200
    self.sanity = "high"
    self.music = {}
    self.music.mediumSanity = love.audio.newSource("src/res/music/Im_fine.wav", "stream")
end

function player:keypressed(key)
    if key == "up" then
        self.sanity = "medium"
    end
end

function player:update(dt)
    -- determines sanity
    if self.sanity == "medium" then
        self.music.mediumSanity:play()
    else
        if self.sanity ~= "medium" then
            self.music.mediumSanity:stop()
        end
    end
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

    self.collider:setLinearVelocity(vx, vy)
end