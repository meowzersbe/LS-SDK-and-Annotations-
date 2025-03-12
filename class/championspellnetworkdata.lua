---ChampionSpellNetworkData singleton. Can be accessed via `ChampionSpellNetworkData.Instance()`.
---@class ChampionSpellNetworkData
---@field lastTime number #(time)
---@field currentSlot SpellSlot
ChampionSpellNetworkData = {}

---Validate input, can be useful for Hwei spells and similar.
---@param slot SpellSlot #
---@param bTriggerEvent boolean #
ChampionSpellNetworkData.ValidateInput = function(self, slot, bTriggerEvent) end

---Restores Hwei spell.
ChampionSpellNetworkData.RestoreHweiSpell = function(self) end

