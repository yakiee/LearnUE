local function createExample(va)
    local a = va  -- 私有变量

    return function()
        print(a)  -- 访问外部的 a
    end
end

local example = createExample(333)
example()  -- 输出 10
