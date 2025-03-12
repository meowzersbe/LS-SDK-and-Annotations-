---Common.Queue class. Queue implementation based on table.insert and table.remove.
---
---**Note:** Part of Common namespace.
---**Tip:** In LuaJIT it's almost as fast as alternative implementation from https://www.lua.org/pil/11.4.html and even though it's slightly slower - it provides much more functionality.
---@class Queue
Common.Queue = {}

---Push the value to the beginning of the queue.
---@param val any #Any value
Queue.PushLeft = function(self, val) end

---Push the value to the end of the queue.
---@param val any #Any value
Queue.PushRight = function(self, val) end

---Pop the value from the beginning of the queue. Returns the popped value.
---@return any
Queue.PopLeft = function(self) end

---Pop the value from the end of the queue. Returns the popped value.
---@return any
Queue.PopRight = function(self) end

---Iterator. Implemented as pairs(Queue.list).
Queue.Pairs = function(self) end

---You can push values directly even in the middle of the queue. Implemented as table.insert(Queue.list, key, value).
---@param key number #Index
---@param val any #Any value
Queue.__newindex = function(self, key, val) end


-- Examples:

-- Example 1: Basic usage
local q = Queue({1, 2, 3})
q:PushLeft(1)
q:PushRight(2)
q:PushLeft(0)
for i=1, #q do
    print(q[i])
end

local q = Queue()
q:PushRight(function() print("Action 1") end)
q:PushRight(function()
    print("Action 2")
    q:PushLeft(function() print("Top Priority Action!") end)
end)
q:PushRight(function() print("Action 3") end)
while #q > 0 do
    q:PopLeft()()
end

