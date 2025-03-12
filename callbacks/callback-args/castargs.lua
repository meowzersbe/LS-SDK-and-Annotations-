---CastArgs
---@class CastArgs
---@field spell Spell
---@field slot SpellSlot
---@field handleCaster integer
---@field networkIdMissile integer
---@field from Vector3
---@field to Vector3
---@field limit Vector3
---@field target AttackableUnit
---@field timeAnimStart number
---@field timeWindupEnd number
---@field timeAnimEnd number
---@field cooldown number
---@field isChanneling boolean
---@field isCharging boolean
---@field wasCast boolean
---@field isStopped boolean
---@field level number
---@field delay number
---@field animationTime number
---@field isAutoAttack boolean
CastArgs = {}

---Returns the spell delay0 and spell delay1.
---@return number, number
CastArgs.GetDelayPartial = function() end

