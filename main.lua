wf = require("src.lib.windfield")
sti = require("src.lib.sti")
require("src.util.map")
suit = require("src.lib.suit")
camera = require("src.lib.Camera")

function love.load()
    cam = camera()
    world = wf.newWorld(0, 0, false)
    require("src.player")
    player:load(50, 40)
    loadMap("untitled")
    player:load(40, 40)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit(1)
    end
end

function love.draw()
    cam:attach()
        -- for debugging
        world:draw()
    cam:detach()
    suit.draw()
end

function love.update(dt)
    world:update(dt)
    cam:update(dt)
    player:update(dt)
end