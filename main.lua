wf = require("src.lib.windfield")
sti = require("src.lib.sti")
require("src.util.map")
state = require("src.lib.gamestate")
suit = require("src.lib.suit")
camera = require("src.lib.Camera")
require("src.states.title")
require("src.states.starting")

function love.load()
    state.registerEvents()
    cam = camera()
    world = wf.newWorld(0, 0, false)
    
    state.switch(title)
end

local debug = false

function love.keypressed(key)
    if debug and key == "up" then
        player.sanity = "high"
    elseif debug and key == "down" then
        player.sanity = "low"
    elseif debug and key == "right" then
        player.sanity = "medium"
    end
    suit.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    if key == "f3" and not debug then
        debug = true
    elseif key == "f3" and debug then
        debug = false
    end
end

function love.draw()
    suit.draw()
    cam:draw()
    if debug then
        love.graphics.print("Sanity: "..tostring(player.sanity))
    end
end

function love.update(dt)
    world:update(dt)
    cam:update(dt)
end