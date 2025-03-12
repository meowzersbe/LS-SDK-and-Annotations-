---ChampionTracker
---@class ChampionTracker
---@field source AIHeroClient
---@field lastPosition Vector3
---@field lastWayPoint Vector3
---@field invisibleSince number
---@field invisibleTimeCount number
---@field lastAuroWardTime number
---@field teleportInfo TeleportInfo
ChampionTracker = {}

---Returns a ChampionTracker instance if find.
---@param nethandle integer #Champion network id.
---@return ChampionTracker
ChampionTracker.GetChampionInfomation = function(nethandle) end

---Returns skirmishData for a championtracker info.
---@return skirmishData
ChampionTracker.GetSkirmishData = function() end

