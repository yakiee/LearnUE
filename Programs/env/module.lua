local myModule = {}

function myModule.example()
    print(myModule.a)  -- 访问模块中的变量
end

myModule.a = 666  -- 定义模块中的变量

myModule.example()  -- 输出 10
