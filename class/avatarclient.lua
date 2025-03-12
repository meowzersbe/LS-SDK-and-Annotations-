---AvatarClient class.
---@class AvatarClient
---@field owner AIHeroClient #AvaterClient owner.
---@field ownerHandle number #(integer) AvatarClient owner's handler.
---@field keystonePerkID number #(integer) Keystone perk ID.
---@field perks PerkInfo[] #(std::vector<PerkInfo>) Container with all perks PerkInfo.
AvatarClient = {}

---Returns Keystone Perk.
---@return Perk
AvatarClient.GetKeystonePerk = function(self) end

