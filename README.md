= OOP in Corona SDK =

**Deprecated in favour of [MiddleClass](https://github.com/kikito/middleclass) library.**

I'll put more notes here but for now, read this doc, or browse the code & comments in *main.lua* and *lib/something.lua*

Also, I highly recommend this Corona orientated tutorial on OOP in LUA:
http://planetlua.squarespace.com/journal/2011/1/21/put-some-oop-in-your-app-part-1-creating-a-class.html

== "Plugin" libraries == 

-	run *git init* from the project root
-	Install libs from project root: *git submodule add git://github.com/__author__/__name__.lua.git lib/__name__*
-	Require normally using the following format: local *__name__ = require("lib/__name__.lua/__name__")*
-	To update plugin libs, run *git pull* from inside the plugin's directory