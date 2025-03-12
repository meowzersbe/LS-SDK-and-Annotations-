---Inherited from GameObject and AttackableUnit class.
---@class AIBaseClient : AttackableUnit
---@field spellBook SpellBook
---@field buffManager BuffManager
---@field activeSpell CastArgs
---@field isZombie boolean
---@field charName string
---@field actionState number #(integer)
---@field actionState2 number #(integer)
---@field isMoving boolean
---@field path Vector3[] #(std::vector<Vector3>)
---@field nextWaypointIndex number #(integer)
---@field petOwner AIBaseClient
---@field attackDelay number
---@field attackCastDelay number
---@field isClone boolean
---@field dashSpeed number
---@field isDashing boolean
---@field serverPosition Vector3
---@field isMagicImmune boolean
---@field isPhysicalImmune boolean
---@field isUnstoppable boolean
---@field totalHealth number
---@field missingHealth number
---@field totalMaxHealth number
---@field healthMaxFromStats number
---@field totalShield number
---@field canAttack boolean
---@field canCrit boolean
---@field canCast boolean
---@field canMove boolean
---@field isSlowed boolean
---@field isImmovable boolean
---@field isStealthed boolean
---@field isTaunted boolean
---@field isFeared boolean
---@field isFleeing boolean
---@field isSupressed boolean
---@field isAsleep boolean
---@field isGhosted boolean
---@field isCharmed boolean
---@field isDisarmed boolean
---@field isRooted boolean
---@field isSilenced boolean
---@field isStunned boolean
---@field hasAABlockingBuff boolean
---@field isMelee boolean
---@field isRanged boolean
---@field hash number #(integer)
---@field totalBaseAttackDamage number
---@field totalBonusAttackDamage number
---@field totalAttackDamage number
---@field totalAbilityPower number
---@field isCasting boolean
---@field isLaneMinion boolean
---@field isSiegeMinion boolean
---@field isSuperMinion boolean
---@field isCasterMinion boolean
---@field isMeleeMinion boolean
---@field isPet boolean
---@field isWard boolean
---@field isWardNoBlue boolean
---@field isTrap boolean
---@field isPlant boolean
---@field isLargeMonster boolean
---@field isBaron boolean
---@field isDragon boolean
---@field isEpicMonster boolean
---@field isSmiteMonster boolean
---@field charIntermediate CharIntermediate
---@field gold number
---@field goldTotal number
---@field minimumGold number
AIBaseClient = {}

---Returns the entity is a bot.
---@return boolean
AIBaseClient.IsBot = function(self) end

---Returns the entity's direction vector.
---@return Vector3
AIBaseClient.GetDirection = function(self) end

---Returns the size of entity's pet array. Entities may have multiple pets. Index starts from 0.
---@return number
AIBaseClient.GetPetHandleSize = function(self) end

---Returns entity's pet handle by index. Entities may have multiple pets. Index starts from 0.
--[[```lua
-- Example: Get first pet
local petHandleSize = Game.localPlayer:GetPetHandleSize()
if petHandleSize > 0 then
    for i=0, petHandleSize-1 do
        local petHandle = Game.localPlayer:GetPetHandleByIndex(i)
        local pet = petHandle and ObjectManager.ResolveHandle(petHandle)
        if pet and pet:IsValid() then
            print(pet:GetUniqueName())
        end
    end
end
```]]
---@return AIBaseClient
AIBaseClient.GetPetHandleByIndex = function(self) end

---Returns the entity's active target.
---@return AttackableUnit
AIBaseClient.GetTarget = function(self) end

---Returns the entity's last waypoint.
---@return Vector3
AIBaseClient.GetWayPoint = function(self) end

---Returns the entity's remaining path array.
---@return Vector2[] #(std::vector<Vector2>)
AIBaseClient.GetRemainingPath2D = function(self) end

---Returns a SpellBookEntry.
---@param slot SpellSlot #(integer0-64) SpellSlot enum.
---@return SpellBookEntry
AIBaseClient.GetSpellEntry = function(self, slot) end

---Returns SpellSlot or SpellSlot.NullSlot.
---@param spellName string #Spell Name for finding spell.
---@return SpellSlot
AIBaseClient.GetSpellSlot = function(self, spellName) end

---Returns SpellState for given SpellSlot.
---@param slot SpellSlot #(integer0-64) SpellSlot enum.
---@return SpellState
AIBaseClient.GetSpellState = function(self, slot) end

---Returns a entity's auto attack damage to target.
---@param target AttackableUnit #Target.
---@return number
AIBaseClient.GetAutoAttackDamage = function(self, target) end

---Returns if entity is facing source \(inside cone\).
---@param source AIBaseClient #Check from source.
---@param angle number  #(float) Cone angle.
---@param range number  #(float) Max check range.
---@return boolean
AIBaseClient.IsFacing = function(self, source, angle, range) end

---Use an object like lantern etc.
---@param target AttackableUnit #Target to use.
AIBaseClient.UseObject = function(self, target) end

---Returns if has buff of type.
---@param type BuffType #(integer) BuffType enum.
---@return boolean
AIBaseClient.HasBuffOfType = function(self, type) end

---Returns if entity is a clone from source entity.
---@param source AIBaseClient #Source of clone.
---@return boolean
AIBaseClient.IsCloneFrom = function(self, source) end

---Returns if entity can use spell of given slot.
---@param slot SpellSot #(integer0-64) SpellSlot enum.
---@return boolean
AIBaseClient.CanUseSpell = function(self, slot) end

---Returns entity real health include Shields and Blitzcrank's passive.
---@param msTime number #(float) Time to predict HPRegenRate.
---@param type DamageType #DamageType enum.
---@return number
AIBaseClient.GetRealHealth = function(self, msTime, type) end

---Returns a buff at `index`.
---@param index Integer #Buff array index.
---@return Buff
AIBaseClient.GetBuff = function(self, index) end

---Returns Buff find by fnv\_hash\(name\).
---@param hash number #(Integer) Buff name Hash
---@return Buff
AIBaseClient.FindBuff = function(self, hash) end

---Returns Buff stacks find by fnv\_hash\(name\).
---@param hash number #(Integer) Buff name Hash
---@return number
AIBaseClient.GetBuffStacks = function(self, hash) end

---Returns real auto attack range \(worked for Azir, Aphelios, Caitlyn and most heroes\).
---@param target AttackableUnit #Target could be null.
---@return number
AIBaseClient.GetAutoAttackRange = function(self, target) end

---Returns whether entity is playing specific animation.
---@param animationHash number #Animation hash. Can be taken with Game.fnvhash(animationName).
---@return boolean
AIBaseClient.IsPlayingAnimation = function(self, animationHash) end

---Returns whether entity is still have given remaining time for certain playing animation.
---@param animationHash number #Animation hash. Can be taken with Game.fnvhash(animationName).
---@param remainingTime number #Remaining time to check.
---@return boolean
AIBaseClient.HasTimeRemainingForAnimation = function(self, animationHash, remainingTime) end

---Returns current grass group ID.
---@return number
AIBaseClient.GetGrassGroupToIgnore = function(self) end

---Returns if entity is recalling.
---@return boolean
AIBaseClient.IsRecalling = function(self) end

---Finds safe spot using game function.
---@param position Vector3
---@return Vector3
AIBaseClient.FindSafeSpot = function(self, position) end

---Returns TeamFlag / NavConditionFlag.
---@return number
AIBaseClient.GetNavConditionFlags = function(self) end

---Returns whether enemy is casting or channeling interruptible spell or not.
---
---**Tip:** 0 - Not casting. 1 - Medium danger level spell. 2 - Dangerous spell.
---@return number #(integer)
AIBaseClient.IsCastingInterruptibleSpell = function(self) end

---Returns whether entity is invulnerable towards damage from another entity (source).
---@param source number #Entity to check invulnerability against
---@return boolean
AIBaseClient.IsInvulnerable = function(self, source) end

