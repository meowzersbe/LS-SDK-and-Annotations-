---SpellBook class.
---@class SpellBook
SpellBook = {}

---Returns SpellBookEntry.
---@param slot SpellSlot #(integer0-64) SpellSlot enum.
---@return SpellBookEntry
SpellBook.GetSpellEntry = function(self, slot) end

---Print spell range,cost and missile speed on console.
---@param slot SpellSlot #(integer0-64) SpellSlot enum.
SpellBook.PrintSpells = function(self, slot) end

---Level up a spell in given SpellSlot.
---@param slot SpellSlot #Given slot.
SpellBook.LevelSpell = function(self, slot) end

---Evolve a spell in given SpellSlot.
---@param slot SpellSlot #Given slot.
SpellBook.EvolveSpell = function(self, slot) end

