require("src.states.starting")

title = {}

function title:update(dt)
    --[[if suit.Button("Play", 0, 530, 100, 50).hit then
        state.switch(starting)
    end]]--
    if suit.Button("Play", love.graphics.getWidth()/2, love.graphics.getHeight()/2, 100, 50).hit then
        state.switch(starting)
    end
end