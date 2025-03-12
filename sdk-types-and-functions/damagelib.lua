---Damage Library for accurate damage calculations.
---@class DamageLib
---@field slot SpellSlot
DamageLib = {}

---Returns <hash, function> map with functions which calculate spell damage.
---
---**Note:** Function must accept (source: AIBaseHero, bRawDamage: boolean, stage: integer) parameters and return float (damage).
---**Tip:** You can extend our DamageLib with missing damage calculations for your champion script or overwrite existing ones if you think it will improve it.
--[[```lua
-- Example: Get damage function map and replace Lux Q damage calculation function.
local LuxLightBindingSpellDataHash = Game.spelldataHash("LuxLightBinding") -- Spell Data hash is used as key for damageMap
local damageMap = DamageLib.GetDamageFunctionMap()
damageMap[LuxLightBindingSpellDataHash] = function(source, target, bRawDamage, stage)
    rawDamage = 100
    return bRawDamage and rawDamage or DamageLib.CalculateMagicalDamage(source, target, rawDamage)
end
```]]
---@return unordered_map<hash, fun(source: AIBaseHero, bRawDamage: boolean, stage: integer): float>
DamageLib.GetDamageFunctionMap = function() end

---Returns calculated damage of the given spell.
---@param spellHash number #(unsigned) spelldataHash of the given spell.
---@param source AIHeroClient #Source unit.
---@param target AIBaseClient #Target unit.
---@param bRawDamage boolean #Return raw damage if true.
---@param stage number #(integer) Return damage of certain stage, if spell supports multiple stages.
---@param slot SpellSlot #SpellSlot of the given spell.
---@return float
DamageLib.GetSpellDamage = function(spellHash, source, target, bRawDamage, stage, slot) end

---Returns calculated damage of the given spell.
---@param spellName string #Name of the given spell.
---@param source AIHeroClient #Source unit.
---@param target AIBaseClient #Target unit.
---@param bRawDamage boolean #Return raw damage if true.
---@param stage number #(integer) Return damage of certain stage, if spell supports multiple stages.
---@return float
DamageLib.GetSpellDamage = function(spellName, source, target, bRawDamage, stage) end

---Returns calculated auto attack damage including various modifiers (armor, resistances, empowerments etc).
---@param source AIBaseClient #Source unit. AA damage will be taked from this unit.
---@param target AIBaseClient #Target unit
---@return float
DamageLib.CalculateAutoAttackDamage = function(source, target) end

---Returns calculated physical damage including various modifiers (armor, resistances, empowerments etc).
---@param source AIBaseClient #Source unit
---@param target AIBaseClient #Target unit
---@param amount float #Raw damage
---@return float
DamageLib.CalculatePhysicalDamage = function(source, target, amount) end

---Returns calculated magical damage including various modifiers (armor, resistances, empowerments etc).
---@param source AIBaseClient #Source unit
---@param target AIBaseClient #Target unit
---@param amount float #Raw damage
---@return float
DamageLib.CalculateMagicalDamage = function(source, target, amount) end


-- Examples:

-- Example 1: Replace Lux Q damage calc function, get damage from tooltip and print it using SDKSpell:GetDamage().
local LuxLightBindingSpellDataHash = Game.spelldataHash("LuxLightBinding") -- Spell Data hash is used as key for damageMap
local LuxLightBindingHash = Game.fnvhash("LuxLightBinding") -- FNV hash is used by AIBaseClient:GetSpellSlot(spellHash) function
local TotalDamageHash = Game.fnvhash("TotalDamageTT") -- FNV hash is used to access tooltip property with SpellBookEntry:GetCalculateInfo(...)
local damageMap = DamageLib.GetDamageFunctionMap()

damageMap[LuxLightBindingSpellDataHash] = function(source, target, bRawDamage, stage)
    local slot = source:GetSpellSlot(LuxLightBindingHash) -- This uses fnv hash
    if slot == SpellSlot.NullSlot then
        return 0
    end

    local entry = source:GetSpellEntry(slot)
    if not entry or not entry:IsValid() then
        return 0
    end

    local rawDamage = entry:GetCalculateInfo(source, TotalDamageHash, slot)

    if bRawDamage or not target or not target:IsValid() then
        return rawDamage
    end

    return DamageLib.CalculateMagicalDamage(source, target, rawDamage)
end

local Q = SDKSpell.Create(SpellSlot.Q, 1300, DamageType.Magical)
print("Q Damage", Q:GetDamage(Game.localPlayer)) -- This will use our custom damage calc function

