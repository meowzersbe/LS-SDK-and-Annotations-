---Orbwalker.
---@class Orbwalker
---@field activeMode OrbwalkerMode #Flags containing active Orbwalker modes. See example below.
---@field lastAttackOrder number
---@field lastAttackRange number
---@field lastTargetNID integer
---@field lastAttack number
---@field missileID integer
---@field forcedPosition Vector3
---@field forcedTarget AttackableUnit
---@field bMove boolean
---@field bAttack boolean
Orbwalker = {}

---Returns orbwalker target.
---@return AttackableUnit
Orbwalker.GetTarget = function() end

---Returns **local player** 's attack cast delay against target .
---@param targetAgainst AIBaseClient #Target against player.
---@return number
Orbwalker.GetAttackCastDelay = function(targetAgainst) end

---Returns **local player** 's attack delay against target .
---@param targetAgainst AIBaseClient #Target against player.
---@return number
Orbwalker.GetAttackDelay = function(targetAgainst) end

---Returns a **hero** 's attack missile speed against target .
---@param source AIHeroClient #Souce to calculate missile speed.
---@param targetAgainst AIBaseClient #Target against source.
---@return number
Orbwalker.GetAttackMissileSpeed = function(source, targetAgainst) end

---Returns if orbwalker ready for next attack.
---@return boolean
Orbwalker.CanAttack = function() end

---Returns if player is ready to cast spells using several special checks. Please use this check instead of IsWindingUp.
---**Tip:** This is important to use this check for casting of spells which do not interrupt AA instead of Orbwalker.CanMove and/or AttackableUnit:IsWindingUp
---@return boolean
Orbwalker.CanUseSpell = function() end

---Returns if orbwalker ready for next move.
---@return boolean
Orbwalker.CanMove = function() end

---Returns if target is in source attack range.
---@param source AIHeroClient #Souce to calculate missile speed.
---@param targetAgainst AIBaseClient #Target against source.
---@param extraRange number #Extra range for check.
---@return number
Orbwalker.IsInAutoAttackRange = function(source, targetAgainst, extraRange) end

---Returns if orbwalker already lasthit this minion.
---@param minion AIBaseClient #Minion to check.
---@return boolean
Orbwalker.IsMinionLasthited = function(minion) end

---Allows to unload core Orbwalker completely.
---
---**Caution:** We do not recommend doing this! <br/>Even if you decide to make your custom Orbwalker - it will not play well with our Evade.
---@param isEnabled boolean #If false then core Orbwalker will not be loaded.
Orbwalker.MasterSwitch = function(isEnabled) end


-- Examples:
-- Example 1: Programmatically set Orbwalker active mode(s) using bit library.
Orbwalker.activeMode = bit.bxor(Orbwalker.activeMode, OrbwalkerMode.Combo) -- Set Combo
Orbwalker.activeMode = bit.band(Orbwalker.activeMode, bit.bnot(OrbwalkerMode.Combo)) -- Unset Combo
