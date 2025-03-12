---Health Prediction class
---@class HealthPrediction
---@field incomingTargetedDamage list #(std::map<unsigned, std::vector<IncomingDamage>>)
---@field incomingAttacks list #(std::map<unsigned, std::vector<IncomingAttack>>)
---@field incomingAttacksHero list #(std::map<unsigned, std::vector<IncomingAttack>>)
HealthPrediction = {}

---Get health prediction for given unit and time. Returns predicted health and bool if unit has turret aggro and if yes also AITurretClient.
---@param unit AIBaseClient #Unit to predict health for.
---@param time number #(float) Prediction time.
---@return number, bool, AITurretClient
HealthPrediction.GetLaneClearHealthPrediction = function(unit, time) end

---Get health prediction for given unit, time and specify whether hero attacks should be included or not.
---@param unit AIBaseClient #Unit to predict health for.
---@param time number #(float) Prediction time.
---@param includeHeroesAttack? boolean #Whether include hero attacks or not (false by default).
---@return number #(float)
HealthPrediction.GetHealthPrediction = function(unit, time, includeHeroesAttack) end


---Get predicted incoming damage for given unit, time and specify whether it should include skillshots and AA or not.
---@param unit AIBaseClient #Unit to predict health for.
---@param time number #(float) Prediction time.
---@param includeSkillshot? boolean #Whether include skillshots or not (true by default).
---@param includeAutoAttacks? boolean #Whether include auto attacks or not (true by default).
---@return number #(float)
HealthPrediction.GetIncomingDamage = function(unit, time, includeSkillshot, includeAutoAttacks) end

---Get all incoming damage dealt by given unit.
---@param unit AIBaseClient #Unit to get all damage from.
---@return number #(float)
HealthPrediction.GetIncomingDamageFrom = function(unit) end

