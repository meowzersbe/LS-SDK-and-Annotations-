---Common library with some useful helper functions and classes made by our Lua developers.
---@class Common
Common = {}

---Executes given action (function) after given delay (in seconds) using OnTick.
---@param action function #Given action function
---@param delay number #Given delay
Common.DelayAction = function(action, delay) end

---Executes given action (function) after given delay (in seconds) using OnDraw.
---@param action function #Given action function
---@param delay number #Given delay
Common.DelayActionPrecise = function(action, delay) end

---Executes given action (function) after certain given frames.
---@param action function #Given action function
---@param frames number #Given frames to wait
Common.DelayActionFrames = function(action, frames) end

---Creates and returns empty Queue instance.
---@return Queue
Common.Queue = function() end

---Creates and returns Queue instance based on table with elements with index starting from 1.
---@param t any[] #Table with elements
---@return Queue
Common.Queue = function(t) end

---Returns enum name.
---@param enumTable any[] #Enumeration table
---@param enum any #Enumeration value
---@return string
Common.GetEnumName = function(enumTable, enum) end

---Rolls a chance. Returns true if roll is successful.
---@param chance number #Any number in range from 0 to 100
---@return boolean
Common.RollChance = function(chance) end

---Returns remaining recall time for player.
---@return number
Common.GetRemainingRecallTime = function() end

---Returns whether unit has immunity.
---@param unit AIBaseClient #Unit to check
---@return boolean
Common.IsUnitImmune = function(unit) end

---Returns whether unit has spell immunity (i.e. has spellshield).
---@param unit AIBaseClient #Unit to check
---@return boolean
Common.IsUnitSpellImmune = function(unit) end

---Returns whether unit is fleeing from gives position.
---@param unit AIBaseClient #Unit to check
---@param pos Vector3 #Position to check
---@return boolean
Common.IsFleeing = function(unit, pos) end

---Returns closest enemy to the player.
---@return AIHeroClient
Common.ClosestEnemy = function() end

