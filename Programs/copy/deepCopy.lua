function deepCopy(original)
    local original_type = type(original)
    local copy

    if original_type == "table" then
        copy = {}
        for key, value in next, original, nil do
            copy[deepCopy(key)] = deepCopy(value)
        end
        setmetatable(copy, deepCopy(getmetatable(original)))
    else
        copy = original
    end
    return copy
end

local original = { a = 1, b = { c = 2 } }
local deepCopyResult = deepCopy(original)
deepCopyResult.b.c = 44444444
print(original.b.c)