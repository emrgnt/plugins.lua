--> CLASS NOTES:
		-- local vars and functions can't be called externally

module (..., package.seeall)

local Something = { funcs = {} }
Something.__index = Something

function Something.__call(_, value)
	return Something:new(value)
end

function Something:new(value, chained)
	return setmetatable({ _val = value, chained = chained or false }, self)
end

-- var1 = "hi"
-- local var2 = "there"
-- 
-- function newThing(v1, v2)
-- end
-- 
-- local function func1()
-- 	print("func1")
-- end
-- 
-- function func2()
-- 	print("func2")
-- end
-- 
-- function something:func3()
-- 	print("func3")
-- end
-- 
-- function something.func4()
-- 	print("func4")
-- end
-- 
-- function func5()
-- 	print(var1)
-- 	print(var2)
-- end
-- 
-- function func6(v1, v2)
-- 	nt = newThing(v1, v2)
-- 	util.print_r(nt)
-- end