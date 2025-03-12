---TurretTracker.
---@class TurretTracker
TurretTracker = {}

---Returns whether the player is inside enemy turret or not.
--[[```lua
-- Example: Draw a centered text indicator under player, showing whether he is inside enemy turret range or not.
local fontSize = 16
Callback.Bind(CallbackType.OnImguiDraw, function()
    local text = TurretTracker.IsPlayerInsideTurret() and "Inside" or "Outside"
    local tX, tY = Renderer.CalcTextSize(text, fontSize)
    Renderer.DrawWorldText(text, Game.localPlayer.position, Math.Vector2(-tX/2, 0), fontSize)
end)
```]]
---@return boolean
TurretTracker.IsPlayerInsideTurret = function() end

---Returns whether the player is close to the edge of enemy turret range.
---@return boolean
TurretTracker.IsPlayerCloseToTurretEdge = function() end

---Returns whether the player is inside enemy fountain or not.
---@return boolean
TurretTracker.IsPlayerInsideFountain = function() end

---Returns whether the player is close to the edge of enemy fountain range.
---@return boolean
TurretTracker.IsPlayerCloseToFountainEdge = function() end

---Returns whether the player is inside enemy turret/fountain or not.
---@return boolean
TurretTracker.IsPlayerInsideTurretOrFountain = function() end

---Returns whether the player is close to the edge of enemy turret/fountain range.
---@return boolean
TurretTracker.IsPlayerCloseToTurretOrFountainEdge = function() end

---Returns whether the player is focused by enemy turret.
---@return boolean
TurretTracker.IsPlayerFocusedByTurret = function() end

---Returns closest ally turret position.
---@return Vector2
TurretTracker.GetClosestAllyTurretPosition = function() end

---Returns closest enemy turret position.
---@return Vector2
TurretTracker.GetClosestEnemyTurretPosition = function() end

---Returns ally fountain (spawn) position.
---@return Vector2
TurretTracker.GetAllySpawnPosition = function() end

---Returns enemy fountain (spawn) position.
---@return Vector2
TurretTracker.GetEnemySpawnPosition = function() end

---Returns ProximityData from given position, structure position and structure range.
---@param position Vector2 #Checked position.
---@param structPosition Vector2 #Structure position.
---@param structRange number #(float) Structure range.
---@return ProximityData
TurretTracker.IsInsideStructureRange = function(position, structPosition, structRange) end

---Returns ProximityData from given position, which is checked against all enemy turrets.
---@param position Vector2 #Checked position.
---@return ProximityData
TurretTracker.IsInsideEnemyTurret = function(position) end

---Returns ProximityData from given position, which is checked against enemy fountain.
---@param position Vector2 #Checked position.
---@return ProximityData
TurretTracker.IsInsideEnemyFountain = function(position) end

