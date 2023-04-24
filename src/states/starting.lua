require("src.player")
camera = require("src.lib.Camera")

starting = {}

function starting:enter()
    love.mouse.setVisible(false)
    love.window.setTitle("Reality")
    player:load(40, 40)
    loadMap("untitled")
end

function starting:draw()
    cam:attach()
    world:draw()
    cam:detach()
end

function starting:update(dt)
    player:update(dt)
    cam:follow(player.collider:getX(), player.collider:getY())
end