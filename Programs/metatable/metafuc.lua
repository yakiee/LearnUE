local Point = {}
Point.__index = Point

function Point:new(x, y)
    local obj = setmetatable({}, self)
    obj.x = x
    obj.y = y
    return obj
end

function Point.__add(p1, p2)
    return Point:new(p1.x + p2.x, p1.y + p2.y)
end

local p1 = Point:new(1, 2)
local p2 = Point:new(3, 4)
local p3 = p1 + p2  -- 调用重载的加法
print(p3.x, p3.y)  -- 输出 4, 6
