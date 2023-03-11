require("src.wall")

function loadMap(name)
    map = sti("src/maps/"..name..".lua")
    if map.layers["wall"] then
        for _,v in pairs(map.layers["wall"].objects) do
            walls:spawn(v.x, v.y, v.width, v.height)
        end
    end
end