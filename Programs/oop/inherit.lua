local a = require("oop.father")
local b = setmetatable({}, { __index = a })
b.__index = b

b.x = 1
b.y = 2
function b:foo2()
    print("foo2 from b")
end

return b