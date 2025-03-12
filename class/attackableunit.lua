---Inherited from GameObject class.
---@class AttackableUnit : GameObject
---@field mp number
---@field maxMp number
---@field resourceType integer
---@field secondaryResource number
---@field maxSecondaryResource number
---@field statusFlags integer
---@field pathfindingCollisionRadius number
---@field lifetime number
---@field maxLifetime number
---@field lifetimeTicks number
---@field physicalDamagePercentageModifier number
---@field magicalDamagePercentageModifier number
---@field hpPercent number
---@field mpPercent number
---@field isVisible boolean
---@field isTargetable boolean
---@field isHPBarRendered boolean
---@field infoBarPos Vector2 #Healthbar position.
---@field infoBarSize Vector2 #Healthbar size.
---@field infoBarOffset Vector2 #Healthbar offset.
AttackableUnit = {}

---Returns if this entity is winding up.
---**Danger:** If you want to utilize spell queue then avoid using this check for spells which do not interrupt basic attacks. Instead use Orbwalker.CanUseSpell function.
---@return boolean
AttackableUnit.IsWindingUp = function(self) end

---Returns if this entity is valid target.
---@param range number #Check range.
---@param onlyEnemyTeam bool #Check target team.
---@param from Vector2 or Vector3 #Check from pos.
---@return boolean
AttackableUnit.IsValidTarget = function(self, range, onlyEnemyTeam, from) end

---Returns if this unit can be targeted by given unit.
---@param unit AttackableUnit #Given unit
AttackableUnit.IsTargetableByUnit = function(self, unit) end
