---ObjectManager contains some list of objects.
---@class ObjectManager
---@field enemyHeroes list
---@field enemyLaneMinions list
---@field allyHeroes list
---@field activeAllyWindWalls list
---@field activeEnemyWindWalls list
---@field allAIBaseClients list
---@field allAttackableUnits list
---@field allGameObjects list
---@field allMissileClients list
---@field enemyMinions list
---@field enemyPets list
---@field enemyStructures list
---@field enemyTurrets list
---@field enemyWards list
---@field allyLaneMinions list
---@field allyMinions list
---@field allyPets list
---@field allyTurrets list
---@field allyWards list
---@field barrels list
---@field jungleMinions list
---@field plants list
---@field spellFarmMinions list #A list of all minions and objects which can be hit with spells. For example it doesn't include Teemo Mushrooms.
ObjectManager = {}

---Get an object by handle \(if failed, returns nil\).
---@param handle number  #(integer) Handle for query.
---@return GameObject
ObjectManager.ResolveHandle = function(handle) end

---Get an object by networkId \(if failed, returns nil\).
---@param networkId number  #(integer) Network handle for query.
---@return GameObject
ObjectManager.ResolveNetworkId = function(networkId) end


-- Examples:

-- Example 1: Find first immobile enemy and cast Q
for _, entity in ObjectManager.enemyHeroes:pairs() do
    if entity:IsValidTarget(Q.range) and not Champions.CanMove(entity, 0.1) and Q:Cast(entity, menu.Q.hitChanceQ) then
        return
    end
end
