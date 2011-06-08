--> CLASS NOTES:
		-- local vars and functions can't be called externally
		-- no real difference between . and :, but use class.var and class:method
		-- Calling o:func(a,b,c) is the same as calling o.func(o,a,b,c). And defining function o:func(a,b,c) is the same as function o.func(self,a,b,c) where "self" points to the object o.

--> don't do the module package thing for classes (errors if you do)
-- module (..., package.seeall)

--> module prototype - class instances don't get these
Something = { 
	class_var1 = -1
}
Something.__index = Something

-- this works too
Something.class_var2 = -2

-- method missing?
-- function Something.__call(_, value)
-- 	return Something:new(value)
-- end

-- constructor
function Something:new(b, c)
	local init = { 
		class_var1 = -1, 
		b = -2 
	}
	-- if b then init.b = b end
	if c then init.c = c end
	-- local init = { b = var1 or 22, c = var2 or 33 }
	return setmetatable(init, self)
end

function Something:new_with_hash(params)
	-- class instance vars with defaults
	local init = { a = 100, b = 200, c = 300 }
	
	-- override any passed params - without validation
	for k,v in pairs(params) do init[k] = v end

	-- per param behaviour
	if params[c] then init[c] = c end

	-- local init = { b = var1 or 22, c = var2 or 33 }
	return setmetatable(init, self)
end

function Something:new_with_everything(a_or_t, b, c)
	-- defaults class instance vars
	local init = { a = 100, b = 200, c = 300}

	-- regular constructor, expecting certain params
	if a_or_t and b and c then
		if a_or_t then init["a"] = a_or_t end
		-- if b then init["b"] = b end
		-- if c then init["c"] = c end

		-- could also do this (could also extend with an else block, throwing a param-non-present error)
		if b then init.b = b end

		-- or, if always want to trust params / want errors if not present
		init["c"] = c

	-- free form constructor using table params
	elseif type(a_or_t) == "table" then
		for k,v in pairs(a_or_t) do init[k] = v end
		
	-- just use defaults
	else
		-- anything actually needed here?
	end

	return setmetatable(init, self)
end

function Something:bump(key, amount)
	self[key] = self[key] + amount
end

-- function Something:debug()
-- 	util.print_r(self)
-- end

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
