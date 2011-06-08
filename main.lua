local _ = require("lib/underscore.lua/underscore")
require("lib/util.lua/util")
require("lib/something")

print("================= APP START =================")
print()


print("==== Class:new(a, b, c) =================")
print()

print("## Module:")
print_r(Something)

s1 = Something:new(10, 20)
s2 = Something:new(10, 20)

print("## Instantiated class #1:")
print_r(s1)

print("## Instantiated class #2:")
print_r(s2)

s1:bump("b", 100)
print("## Increment a var on one instance:")
print(s1.b)
print(s2.b)
print()

print()
print("==== Class:new_with_hash({}) =================")
print()

s3 = Something:new_with_hash({b=5, c=5, x=5})

print("## Instantiated class #3:")
print_r(s3)

print()
print("==== Class:new_with_everything(*) =================")
print()

s4 = Something:new_with_everything(9, 9, 9)
s5 = Something:new_with_everything({b=8, c=8, x=8})
s6 = Something:new_with_everything()

Something.class_var2 = -22

print("## Instantiated class #4:")
print_r(s4)
print("## Instantiated class #5:")
print_r(s5)
print("## Instantiated class #6:")
print_r(s6)

-- function func()
-- 	-- 
-- 	-- util.print_r(Something)
-- 	-- util.print_r(s)
-- end
-- 
-- func()

-- local util = require("util")
-- local _ = require("lib/underscore/underscore")
-- 
-- print(_)
-- 
-- print(var1)
-- print(var2)
-- print()
-- 
-- print(something.var1)
-- print(something.var2)
-- print()
-- 
-- -- print(func1())
-- -- print(func2())
-- -- print(func3())
-- -- print(func4())
-- -- print()
-- -- print(something.func1())-- 
-- 
-- -- print(something.func2())
-- -- print(something.func3())
-- -- print(something.func4())
-- -- print(something.func5())
-- -- print(something.func6())
-- -- print()
