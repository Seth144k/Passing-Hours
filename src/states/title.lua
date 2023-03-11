require("src.states.starting")

title = {}

function title:update(dt)
    if suit.Button("Play", 0, 530, 100, 50).hit then
        state.switch(starting)
    end
end