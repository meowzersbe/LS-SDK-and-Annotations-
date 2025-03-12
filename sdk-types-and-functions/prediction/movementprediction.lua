---Class which allows to predict unit movement
---@class MovementPrediction
MovementPrediction = {}

---Get movement prediction.
---**Danger:** Be aware that this overload has bFt boolean argument as true by default. Therefore this will add extra delay (latency and serverTick) in calculations. If used in wrong way it may lead to inaccurate results.
---@param unit AIBaseClient #Given entity for movement prediction
---@param delay float #Delay to be used in calculations besides latency and serverTick
---@return PredictionOutput #
MovementPrediction.GetPrediction = function(unit, delay) end

---Get movement prediction.
---@param input PredictionInput #Given prediction input
---@param bFt boolean #If true - this will add latency and serverTick to delay in calculations
---@param bCheckCollision boolean #If true - this will also check for collision
---@return PredictionOutput #
MovementPrediction.GetPrediction = function(input, bFt, bCheckCollision) end

---Get collision. This returns if there is any collision.
---@param positions Vector3[] #Given positions
---@param input PredictionInput #Given prediction input
---@return boolean #Result of the collision
MovementPrediction.GetCollision = function(positions, input) end

---Get collision. This returns multiple results. May be useful for logic of spells which explode with their colliders.
---**Danger:** This is expensive function. Please use with caution or use MovementPrediction.GetCollision instead.
---@param positions Vector3[] #Given positions
---@param input PredictionInput #Given prediction input
---@return CollisionResult[] #Result of the collision detection. It may have multiple results.
MovementPrediction.GetCollisionEx = function(positions, input) end

