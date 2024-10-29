local function getValue(key)
    print("Accessing key:", key, "of type", type(key))  -- 打印访问的键和类型
    return key  -- 返回键
end

local myTable = setmetatable({}, { __index = getValue })

-- 确保使用字符串访问
print(myTable["a"])  -- 访问字符串
print(myTable["b"])  -- 访问字符串
