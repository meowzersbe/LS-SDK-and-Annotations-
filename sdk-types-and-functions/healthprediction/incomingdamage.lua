---IncomingDamage class
---@class IncomingDamage
---@field source AIBaseClient
---@field target AIBaseClient
---@field sourceMissile MissileClient
---@field damage number #(float)
---@field castDelay number #(float)
---@field totalDelay number #(float)
---@field hasMissile boolean
---@field wasCast boolean
---@field removed boolean
---@field spellData Spell
---@field missileNID number #(unsigned)
---@field timeStart number #(float)
---@field buffTrigger boolean
---@field buff Buff
---@field sourcePosition Vector3
---@field endPosition Vector3
IncomingDamage = {}

