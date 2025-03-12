---'Inherited from GameObject , AIBaseClient and AttackableUnit class.'
---@class AIHeroClient : AIBaseClient
---@field canShop boolean
---@field summonerLevel number
---@field avatarClient AvatarClient
AIHeroClient = {}

---Returns whether hero can level up a spell in given SpellSlot or not.
---@param slot SpellSlot #Given slot.
---@return boolean
AIHeroClient.CanLevelSpellSlot = function(self, slot) end

---Returns whether hero can evolve a spell in given SpellSlot or not.
---@param slot SpellSlot #Given slot.
---@return boolean
AIHeroClient.CanEvolveSpellSlot = function(self, slot) end

---Buy an item by given id.
---@param id number #(integer) Given item id.
AIHeroClient.BuyItem = function(self, id) end

---Sell an item by given slot.
---@param slot number #(integer) Given item slot.
AIHeroClient.SellItem = function(self, slot) end

---Swap an item from one slot to another.
---@param from number #(integer) Move from this slot.
---@param to number #(integer) Move to this slot.
AIHeroClient.SwapItem = function(self, from, to) end

---Get inventory slot from given item slot.
---@param slot number #(integer) Given item slot.
---@return InventorySlot
AIHeroClient.GetItem = function(self, slot) end

---Get inventory slot from given item id.
---@param id number #(integer) Given item id.
---@return InventorySlot
AIHeroClient.FindItem = function(self, id) end

---Get spell slot from given item id.
---@param id number #(integer) Given item id.
---@return SpellSlot
AIHeroClient.FindItemSlot = function(self, id) end

---Returns whether hero can use item with given item id.
---@param id number #(integer) Given item id.
---@return boolean
AIHeroClient.CanUseItem = function(self, id) end

---Returns HeroStatsCollection
---@return HeroStatsCollection
AIHeroClient.GetStatsCollection = function(self) end

