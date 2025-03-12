---Buff class.
---@class Buff
---@field isValid boolean
---@field startTime number
---@field expireTime number
---@field leftTime number
---@field short integer
---@field int integer
---@field type BuffType
---@field owner AIBaseClient
---@field source AIBaseClient
---@field hash integer
Buff = {}

---Returns buff name.
---@return string
Buff.GetName = function(self) end

