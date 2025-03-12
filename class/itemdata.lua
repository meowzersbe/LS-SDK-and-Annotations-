---ItemData struct
---@class ItemData
---@field id number #Item ID
---@field name string #Item name
---@field displayName string #Display name
---@field spellName string #Spell name
---@field description string #Item description
---@field tooltip string #Tooltip string key argument to be used in Game.TranslateString function.
---@field price number #Item price in the shop
ItemData = {}

---Returns calculation result similar to SpellBookEntry.GetCalculateInfo
---@param source AIBaseClient #Souce for calculate.
---@param hash number #(integer) Calculation name hash.
---@return number
ItemData.GetCalculateInfo = function(self, source, hash) end

