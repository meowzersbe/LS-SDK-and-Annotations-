---TargetSelector.
---@class TargetSelector
---@field selectedTarget AIHeroClient #Currently selected target
TargetSelector = {}

---Returns best target.
---@param range number #Check range.
---@param damageType DamageType #Damage type.
---@param from Vector3 #Check from.
---@param addBoundingRadius boolean #Should add target bounding radius.
---@return AIHeroClient
TargetSelector.GetTarget = function(range, damageType, from, addBoundingRadius) end

---Returns best target.
---@param range number #Check range.
---@param damageType DamageType #Damage type.
---@param from Vector3 #Check from.
---@param addBoundingRadius boolean #Should add target bounding radius.
---@param filterFn function #Custom filter function.
---@return AIHeroClient
TargetSelector.GetTarget = function(range, damageType, from, addBoundingRadius, filterFn) end

---Returns a list of possible targets, sorted by priority.
---@param range number #Check range.
---@param damageType DamageType #Damage type.
---@param from Vector3 #Check from.
---@param addBoundingRadius boolean #Should add target bounding radius.
---@return AIHeroClient[]
TargetSelector.GetTargets = function(range, damageType, from, addBoundingRadius) end

---Returns TS priority for given target.
---@param hero AIHeroClient #Given target.
---@return number
TargetSelector.GetPriority = function(hero) end

---Returns currently selected target.
---@return AIHeroClient
TargetSelector.GetSelectedTarget = function() end

---Set forced target.
---
--[[```lua
-- Example: Force target under our cursor.
Callback.Bind(CallbackType.OnTick, function()
    local hover = Game.GetHoveredUnit()
    TargetSelector.SetForcedTarget(hover and hover:IsValid() and hover or nil)
end)
```]]
---@param target AIHeroClient #Target to be forced. nil to clear.
TargetSelector.SetForcedTarget = function(target) end

