-- Deprecated.(Defined in Lua 5.1/LuaJIT, current is Lua 5.4.)Lua Diagnostics.(deprecated)
function example()
    local env = getfenv() -- 获取当前环境
    print(env)            -- 打印当前环境的表
end

example()
