---SpellBookEntry class.
---@class SpellBookEntry
---@field info SpellInfo
---@field spell Spell #(Spelldata Class)
---@field isToggled boolean
---@field internalState boolean
---@field level number
---@field timeCooldownOver number
---@field timeNextRecharge number
---@field ammo number
---@field cooldown number
---@field rechargeTime number
---@field fValue float[] #Contains special f tooltip values. See example for more info.
SpellBookEntry = {}

---Returns if entry is valid.
---@return boolean
SpellBookEntry.IsValid = function(self) end

---Returns SpellData Name.
---@return string
SpellBookEntry.GetName = function(self) end

---Returns spell mana cost.
---@return number
SpellBookEntry.ManaCost = function(self) end

---Returns spell displayRange.
---@return number
SpellBookEntry.DisplayRange = function(self) end

---Returns calculation result
--[[```lua
-- Example: Get total damage from Lux Q tooltip
local TotalDamageHash = Game.fnvhash("TotalDamageTT")
local entry = Game.localPlayer:GetSpellEntry(SpellSlot.Q)
local totalDamage = entry:GetCalculateInfo(Game.localPlayer, TotalDamageHash, SpellSlot.Q)
```]]
---@param source AIBaseClient #Souce for calculate.
---@param hash number #(integer) Calculation name hash.
---@param slot SpellSlot #(integer0-64) SpellSlot enum.
---@return number
SpellBookEntry.GetCalculateInfo = function(self, source, hash, slot) end

---Print spell tooltip text in game. you can use **GetCalculateInfo** to get tooltip tag value**.**
---@param extended boolean #Print extended tooltip.
---@return 
SpellBookEntry.PrintTooltip = function(self, extended) end


-- Examples:

-- Example 1: Accessing damage fValue from Ignite tooltip
local slot = SpellSlot.F

-- Print tooltip to see which f value we need to use:
Game.localPlayer:GetSpellEntry(slot):PrintTooltip(false)

-- Access 1st fValue:
print(Game.localPlayer:GetSpellEntry(slot).fValue[1]) -- Index starts from 1. In this example if Ignite is in F slot it will print Ignite damage
