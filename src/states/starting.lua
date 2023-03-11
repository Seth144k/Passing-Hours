require("src.player")
camera = require("src.lib.Camera")

starting = {}

function starting:enter()
    love.window.setTitle("Reality")
    cam = camera()
    loadMap("untitled")
    player:load(40, 40)
end

function starting:draw()
    cam:attach()
        world:draw()
    cam:detach()
end

function starting:update(dt)
    cam:follow(player.collider:getX(), player.collider:getY())
    player:update(dt)
end