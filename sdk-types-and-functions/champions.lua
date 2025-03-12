---Champions script manager.
---
---**Caution:** Q/W/E/R/QMANA/WMANA/EMANA/RMANA should be set by yourself.
---@class Champions
---@field Q SDKSpell
---@field W SDKSpell
---@field E SDKSpell
---@field R SDKSpell
---@field QMANA number
---@field WMANA number
---@field EMANA number
---@field RMANA number
---@field None boolean
---@field Flee boolean
---@field Combo boolean
---@field Harass boolean
---@field LaneClear boolean
---@field OnlyHarass boolean
---@field FastLaneClear boolean
---@field Freeze boolean
---@field Hash integer
---@field FarmMinions UI.Slider
---@field spellFarm UI.KeyBind
---@field harassToggle UI.KeyBind
---@field PredictionType UI.List
---@field isCherry boolean #Returns whether we are in Arena Game Mode.
Champions = {}

---Create a champion base menu.
---@param menu UI.Menu #Root menu.
---@param predictionType integer #(0-1) Default prediction type\(0 = default ,1 = fast\).
Champions.CreateBaseMenu = function(menu, predictionType) end

---Create a champion Q\W\E\R drawing menu \(If Chamipons.Q/W/E/R has been set\).
---@param menu UI.Menu #Dawing sub menu.
---@param defaultValue boolean #Default value of range check box.
Champions.CreateColorMenu = function(menu, defaultValue) end

---Lagfree check for better performance.
---@param index integer #(0-4) Index.
---@return boolean
Champions.LagFree = function(index) end

---Harass check  \(under enemy turret and toggle check\).
---@return boolean
Champions.CanHarass = function() end

---Spell farm check  \(check spellFarm toggle,mana setting,minions nearby and orbwalker is LaneClear mode\).
---@param checkMinionsNumber boolean #(false) Should check enemy minions aournd with laneclear slider.
---@return boolean
Champions.CanSpellFarm = function(checkMinionsNumber) end

---Master switch to control internal Cpp scripts.
---@param enable boolean #Enabled.
Champions.CppScriptMaster = function(enable) end

---Check a target is can move\(not been CCed\) after delay.
---@param target AIBaseClient #Target.
---@param delay number #After the delay target can move.
---@return boolean
Champions.CanMove = function(target, delay) end

---Get incoming damage.
---@param target AIBaseClient #Target.
---@return number #(float)
Champions.GetIncomingDamage = function(target) end

---Returns if souce and target is moving in same direction.
---@param source AIBaseClient #Source
---@param target AIBaseClient #Target.
---@param angle number #(default = 20) Angle for check.
---@return boolean
Champions.IsMovingInSameDirection = function(source, target, angle) end

---Returns if target is unkillable after delay.
---@param target AIBaseClient #Target.
---@param delay number #Spell delay.
---@return boolean
Champions.ValidKillTarget = function(target, delay) end

---Returns if target is unkillable or **overkill** after delay.
---@param target AIBaseClient #Target.
---@param delay number #Spell delay.
---@return boolean
Champions.ValidUlt = function(target, delay) end

---Clean base menu  and QWER instance. Should be called when **unload**.
Champions.Clean = function() end


-- Examples:

-- Example 1: SDKSpell and SDKSpell:SetSkillshot example
-- Creating SDKSpell instances:
-- IMPORTANT: Make sure to call Champions.Clean() OnUnload to clear these instances!
Champions.Q = SDKSpell.Create(SpellSlot.Q, 1400, DamageType.Magical)
Champions.W = SDKSpell.Create(SpellSlot.W, 100, DamageType.Magical)
Champions.E = SDKSpell.Create(SpellSlot.E, 1200, DamageType.Magical)
Champions.R = SDKSpell.Create (SpellSlot.R, 5500, DamageType.Magical)

-- Set skillshot:
Champions.Q:SetSkillshot(0.25, 60, 1000, SkillshotType.SkillshotLine, true, CollisionFlag.CollidesWithYasuoWall, HitChance.High, true)
Champions.R:SetSkillshot(1, 65, math.flt_max, SkillshotType.SkillshotCircle, false, CollisionFlag.CollidesWithNothing, HitChance.High, true)
-- Please note how we use math.flt_max for speed instead of math.huge, this is important

Callback.Bind(CallbackType.OnUnload, function()
    Champions.Clean() -- Clean up
    return CallbackResult.Dispose
end)
