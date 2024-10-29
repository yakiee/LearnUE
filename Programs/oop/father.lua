local a = {}
a.__index = a
a.z = 3
function a:foo()
    print("foo from a")
end

return a