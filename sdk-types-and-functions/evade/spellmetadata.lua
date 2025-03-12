---Structure containing spell meta data used by Evade.
---@class SpellMetaData
---@field Slot SpellSlot
---@field SlotType SpellSlotType
---@field UniqueID number
---@field Name string
---@field EvadeDisplayName string
---@field ChampionName string
---@field ChampionNameHash number
---@field DangerLevel DangerLevel
---@field IsCrowdControl boolean
---@field CrowdControl CrowdControlType[] #(std::vector<CrowdControlType>) List of crowd control types which this spell may apply.
SpellMetaData = {}

