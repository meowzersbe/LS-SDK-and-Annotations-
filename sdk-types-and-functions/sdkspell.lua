---SDKSpell for easy cast spell.
---@class SDKSpell
---@field slot SpellSlot
---@field lastCastAttempt integer
---@field isSkillShot boolean
---@field boundingRadiusMod boolean
---@field isChargeSpell boolean
---@field chargedBuffNameHash integer
---@field chargedMaxRange number
---@field chargedMinRange number
---@field chargedSpellNameHash integer
---@field forceSpellHash integer
---@field chargedBuffNameHash integer
---@field chargeDuration number
---@field collision boolean
---@field damageType DamageType
---@field collisionFlags CollisionFlag
---@field type SkillshotType
---@field width number
---@field speed number
---@field delay number
---@field hitchance HitChance
---@field rangeCheckFrom Vector3
---@field from Vector3
---@field range number
SDKSpell = {}

---Create a sdk spell instance.
---@param slot SpellSlot #Spell slot.
---@param range number #Spell range.
---@param damageType DamageType #Damage type.
---@return SDKSpell
SDKSpell.Create = function(slot, range, damageType) end

---Set skillshot spell.
---@param delay number #Spell delay.
---@param width number #Spell width.
---@param speed number #Spell missile speed.
---@param type SkillshotType #.
---@param collision boolean #Should calculate collision.
---@param collisionFlags CollisionFlag #.
---@param minHitChance HitChance #Min hitchance for cast.
---@param boundingRadiusMod boolean #Should include target bounding radius.
SDKSpell.SetSkillshot = function(self, delay, width, speed, type, collision, collisionFlags, minHitChance, boundingRadiusMod) end

---Set targetted spell.
---@param delay number #Spell delay.
---@param speed number #Spell missile speed.
---@param type SkillshotType #.
---@param collision boolean #Should calculate collision.
---@param collisionFlags CollisionFlag #.
---@param minHitChance HitChance #Min hitchance for cast.
---@param boundingRadiusMod boolean #Should include target bounding radius.
SDKSpell.SetTargetted = function(self, delay, speed, type, collision, collisionFlags, minHitChance, boundingRadiusMod) end

---Delete spell instance and clean memory. \(Do it when unload if you create a spell and not manage it to Champions class Q/W/E/R\)
SDKSpell.Delete = function(self) end

---Returns if spell is ready to cast.
---@return boolean
SDKSpell.Ready = function(self) end

---Returns if spell will be ready to cast after certain time. This includes latency internally.
---
---**Tip:** This can be useful to pre-cast spells when they are about to get off cooldown.
---**Caution:** Be careful with certain spells like `Ashe Q` because with SpellState.Suppressed it will also return true.
---@param time? number #Remaining time to check.
---@return boolean
SDKSpell.ReadyPredCast = function(self, time) end

---Returns if spell is charging.
---@return boolean
SDKSpell.IsCharging = function(self) end

---Returns datainstance.
---@return SpellBookEntry
SDKSpell.DataInstance = function(self) end

---Set charge spell like varus Q etc.
---@param spellName string #Spell name.
---@param buffName string #Charge buff name.
---@param minRange number #Min charge range.
---@param maxRange number #Max charge range.
---@param duration number #Charge max duration.
SDKSpell.SetCharged = function(self, spellName, buffName, minRange, maxRange, duration) end

---Returns spell mana cost.
---@return number
SDKSpell.ManaCost = function(self) end

---Returns spell charge percent.
---@return number
SDKSpell.ChargePercent = function(self) end

---Returns spell cooldown.
---@return number
SDKSpell.Cooldown = function(self) end

---Returns spell level.
---@return number
SDKSpell.Level = function(self) end

---Returns if cast sucessfully.
---@param target AIBaseClient #Spell target.
---@param usePacket boolean #false
---@return boolean
SDKSpell.CastOnUnit = function(self, target, usePacket) end

---Returns if cast sucessfully.
---@param usePacket boolean #false
---@return boolean
SDKSpell.Cast = function(self, usePacket) end

---Returns if cast sucessfully.
---@param target AIBaseClient #Spell target.
---@param hitChanceMenu UI.List #Use menu to check min hitchance.
---@param usePacket boolean #false
---@return boolean
SDKSpell.Cast = function(self, target, hitChanceMenu, usePacket) end

---Returns if cast sucessfully.
---@param pos Vector3 #Cast position.
---@param limit Vector3 #Cast posiiton limit, use for Viktor E etc.
---@param usePacket boolean #false
---@return boolean
SDKSpell.Cast = function(self, pos, limit, usePacket) end

---Special CastSpell variation which can be useful for some champions.
---@param slot SpellSlot #
---@param pos1 Vector3 #
---@param pos2 Vector3 #
---@param bTriggerEvent boolean #
SDKSpell.CastSpell2 = function(self, slot, pos1, pos2, bTriggerEvent) end

---Special CastSpell variation which can be useful for some champions.
---@param slot SpellSlot #
---@param target AttackableUnit #
---@param bTriggerEvent boolean #
SDKSpell.CastSpell2 = function(self, slot, target, bTriggerEvent) end

---Returns prediction output.
---@param target AIBaseClient #Target.
---@return PredictionOutput
SDKSpell.GetPrediction = function(self, target) end

---Returns spell damage to target.
---@param target AIBaseClient #Target.
---@param stage integer #Damage stage.
---@return number
SDKSpell.GetDamage = function(self, target, stage) end

---Returns if spell is coliision from A to B.
---@param from Vector3 #From pos.
---@param to Vector3 #To pos.
---@param target AIBaseClient #Target to ignore.
---@return boolean
SDKSpell.IsCollision = function(self, from, to, target) end

---Returns ture if cast sucessfully to a retrive/zhonya/teleport target.
---@param from Vector3 #From pos.
---@param isSnare boolean #Is snare spell Jinx E etc.
---@param strictlyTimeCheck boolean #Strictly time check for some important R spell.
---@return boolean
SDKSpell.CastSpecialImmobileTarget = function(self, from, isSnare, strictlyTimeCheck) end

---Returns if cast sucessfully.
---@param pos Vector3 #Cast position.
---@param usePacket boolean #false
---@return boolean
SDKSpell.StartCharging = function(self, pos, usePacket) end

---Returns if cast sucessfully.
---@param pos Vector3 #Cast position.
---@param releaseCast boolean #Is release cast.
---@param extraRange number #extra cast end pos.
---@param usePacket boolean #false
---@return boolean
SDKSpell.ShootChargedSpell = function(self, pos, releaseCast, extraRange, usePacket) end

---Returns optimal position for spell farm.
---@param minMinions number #(integer) Minimum amount of minions to hit.
---@param isJungleMinions boolean #Run this logic on jungle camps.
---@return Vector3
SDKSpell.GetCastOnBestFarmPosition = function(self, minMinions, isJungleMinions) end

---Returns optimal position for AOE on enemy heroes.
---@param minTargets number #(integer) Minimum amount of targets to hit.
---@return Vector3
SDKSpell.GetCastOnBestAOEPosition = function(self, minTargets) end

