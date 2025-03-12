---IncomingAttack class
---@class IncomingAttack
---@field source AIBaseClient
---@field target AIBaseClient
---@field sourcePosition Vector3
---@field castDelay number #(float)
---@field delay number #(float)
---@field startTime number #(float)
---@field damage number #(float)
---@field processed number #(int)
---@field isRangedAttack boolean
IncomingAttack = {}

---Get damage
---@param time number #
---@return number #(float)
IncomingAttack.GetDamage = function(self, time) end

