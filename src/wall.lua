walls = {}

function walls:spawn(x, y, width, height)
    local wall = world:newRectangleCollider(x, y, width, height, {collision_class = "Wall"})
    wall:setType('static')
    -- add wall to walls
    table.insert(self, wall)
end