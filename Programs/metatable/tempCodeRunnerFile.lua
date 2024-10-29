local function getValue(key)
    local values = { a = 1, b = 2 }
    return values[key]
end

local myTable = setmetatable({}, { __index = getValue })

print(myTable.a)  -- 输出 1
print(myTable.b)  -- 输出 2
print(myTable.c)  -- 输出 nil，因为 c 不在函数中
