---Evade Skillshot class
---@class Skillshot
---@field SpellData SpellData #Spell data of this skillshot.
---@field Caster AIBaseClient #Caster of this spell.
---@field StartPosition Vector2 #Start position of this spell.
---@field EndPosition Vector2 #End position of this spell.
---@field DirectionVector Vector2 #Direction vector of this spell.
Skillshot = {}

---Returns whether this skillshot is ignored or not.
---@return boolean
Skillshot.IsIgnored = function(self) end

---Ignore this skillshot (same effect as double clicking on skillshot area).
---
---**Tip:** To ignore multiple spells at given position you may use Evade.IgnoreSkillshotsAtPosition(position) function.
Skillshot.IgnoreTemporarily = function(self) end

---Returns if given position is within spell area.
---@param position Vector2 #Checked position.
---@return boolean
Skillshot.Contains = function(self, position) end

---Returns calculated time when certain position will get hit by this spell. Position is irrelevant for some types of spells.
---@param position Vector2 #Checked position. Does not have to be inside skillshot area (it will be projected).
---@return number #(float)
Skillshot.GetHitTime = function(self, position) end

---Returns calculated remaining time when certain position will get hit by this spell. Position is irrelevant for some types of spells.
---@param position Vector2 #Checked position. Does not have to be inside skillshot area (it will be projected).
---@return number #(float)
Skillshot.GetHitRemainingTime = function(self, position) end

