---Buff Manager.
---@class BuffManager
---@field buffs Buff[] #(std::vector<Buff>)
---@field owner AIBaseClient
---@field ownerHandle integer
---@field ownerNetworkID integer
BuffManager = {}

---Returns team dragon buff count.
---@param type DragonType #DragonType enum.
---@param team Team #Team number.
---@return integer
BuffManager.GetDragonBuffCount = function(self, type, team) end

