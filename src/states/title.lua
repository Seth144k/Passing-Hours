require("src.states.starting")

title = {}

function title:enter()
end

function title:update(dt)
    if suit.Button("Play", love.graphics.getWidth()/2, love.graphics.getHeight()/2, 100, 50).hit then
        state.switch(starting)
    end
end