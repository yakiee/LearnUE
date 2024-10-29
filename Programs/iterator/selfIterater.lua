local function myIterator(t)
    local index = nil  -- 初始化索引为 nil
    return function()
        index = next(t, index)  -- 获取下一个索引
        return index, t[index]   -- 返回键和值
    end
end

local myTable = { a = 1, b = 2, c = { d = 3, e = 4}}

for key, value in myIterator(myTable) do
    print(key, value)
end
