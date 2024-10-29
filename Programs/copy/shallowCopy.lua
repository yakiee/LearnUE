local original = { a = 1, b = { c = 2 } }
local shallowCopy = { a = original.a, b = original.b } -- 浅拷贝

shallowCopy.b.c = 3                                    -- 修改 shallowCopy 中的 b
print(original.b.c)                                    -- 输出 3，因为 original.b 和 shallowCopy.b 指向同一个表
