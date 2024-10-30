-- 定义一个基础表
local base = { a = 1, b = 2 }

-- 定义一个派生表，并将 base 作为其元表的 __index
local derived = setmetatable({}, {
    __index = base  -- 当 derived 中没有找到键时，查找 base
})

print(derived.a)  -- 输出 1，调用了 base 中的值
print(derived.b)  -- 输出 2，调用了 base 中的值
print(derived.c)  -- 输出 nil，derived 中没有 c，base 中也没有
