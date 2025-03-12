---Prediction input
---@class PredictionInput
---@field from Vector3 #
---@field rangeCheckFrom Vector3 #
---@field delay number #(float)
---@field radius number #(float)
---@field range number #(float)
---@field speed number #(float)
---@field startOffset number #(float)
---@field type SkillshotType #
---@field target AIBaseClient #
---@field useBoundingRadius boolean #
---@field collision boolean #
---@field collisionFlags CollisionFlag #
PredictionInput = {}


---PredictionInput constructor
---@param unit AIBaseClient #
---@param delay number #(float)
PredictionInput.new = function(unit, delay) end

---comment
---@param from Vector3 #
---@param rangeCheckFrom Vector3 #
---@param delay float #
---@param radius float #
---@param range float #
---@param speed float #
---@param type SkillshotType #
---@param target AIBaseClient #
---@param bUseBoundingRadius boolean #
---@param bCollision boolean #
---@param collisionFlags CollisionFlag #
---@param bAoe boolean #
---@param startOffset float #
PredictionInput.new = function(from, rangeCheckFrom, delay, radius, range, speed, type, target, bUseBoundingRadius, bCollision, collisionFlags, bAoe, startOffset) end

