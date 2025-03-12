---Game info and functions.
---@class Game
---@field localPlayer AIHeroClient
Game = {}

---Returns your current latency.
---@return number
Game.GetLatency = function() end

---Returns game tick count now.
---@return integer
Game.GetTickCount = function() end

---Returns game clock time now.
---@return number
Game.GetTime = function() end

---Returns fnvhash of string.
---@param str string #String for calculate\(case ignore\).
---@return integer
Game.fnvhash = function(str) end

---Returns spelldataHash of string.
---@param str string #String for calculate\(case ignore\).
---@return integer
Game.spelldataHash = function(str) end

---Returns translated string.
---@param str string #String key to translate. You may use displayName value from https://127.0.0.1:2999/liveclientdata/playerlist
---@return string
Game.TranslateString = function(str) end

---Returns game id.
---@return number
Game.GameID = function() end

---Returns game mode.
---@return string
Game.GameMode = function() end

---Returns game type.
---@return string
Game.GameType = function() end

---Returns if game is not custom.
---@return boolean
Game.IsMatchmadeGame = function() end

---Returns current Arena stage. `2` - combat stage.
---@return number
Game.GetCherryStage = function() end

---Returns game region.
---@return string
Game.Region = function() end

---Returns game map id.
---@return integer
Game.MapID = function() end

---Returns game map name.
---@return string
Game.MapName = function() end

---Returns pos is wall of type wall.
---@param pos Vector2 or Vector3 #Check pos.
---@param flag CellFlag #Flag for check.
---@param radius number #Range for check.
---@return boolean
Game.IsWallOfType = function(pos, flag, radius) end

---Returns pos is in fow.
---@param pos Vector3 #Check pos.
---@return boolean
Game.IsInFoW = function(pos) end

---Get Spelldata by spell hash.
--[[```lua
-- Example: Get spell data info value
local WSpell = Game.GetSpellByHash(Game.spelldataHash("PickACard")) -- You can get spelldata by hash
if WSpell then
    local sucusss,value = WSpell:GetCalculateInfo(Game.fnvhash("GoldBase"), W:DataInstance().level)
    print(value)
end
```]]
---@param spellHash number #(integer) Spell hash.
---@return Spell
Game.GetSpellByHash = function(spellHash) end

---Get target under our cursor.
---
--[[```lua
-- Example: Force target under our cursor.
Callback.Bind(CallbackType.OnTick, function()
    local hover = Game.GetHoveredUnit()
    TargetSelector.SetForcedTarget(hover and hover:IsValid() and hover or nil)
end)
```]]
---@return AttackableUnit
Game.GetHoveredUnit = function() end

---Get manually selected (clicked) target.
---@return AttackableUnit
Game.GetSelectedTarget = function() end

---Get cursor world position
---@return Vector3
Game.GetCursorWorldPosition = function() end

---Create obstacle instance to be used with CreateSpecialPath
---@param position Vector2 #Obstacle position.
---@param radius number #(float) Obstacle radius.
---@return SpecialPathObstacle
Game.SpecialPathObstacle = function(position, radius) end

---Returns calculated path from given start position to given end position.
---@param startPos Vector2 #Start position.
---@param endPos Vector2 #End position.
---@param bSmoothPath boolean #Return smooth path. Recommended to use true.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreatePath = function(startPos, endPos, bSmoothPath) end

---Returns calculated path from given start position to given end position.
---@param startPos Vector3 #Start position.
---@param endPos Vector3 #End position.
---@param bSmoothPath boolean #Return smooth path. Recommended to use true.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreatePath = function(startPos, endPos, bSmoothPath) end

---Returns calculated path from player position to given end position.
---@param endPos Vector2 #End position.
---@param bSmoothPath boolean #Return smooth path. Recommended to use true.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreatePath = function(endPos, bSmoothPath) end

---Returns calculated path from player position to given end position.
---@param endPos Vector2 #End position.
---@param bSmoothPath boolean #Return smooth path. Recommended to use true.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreatePath = function(endPos, bSmoothPath) end

---Returns special calculated path from given start position to given end position, but it adds "fake walls" under each minion and hero within given range.
--[[```lua
-- Example: Get special path from player position to cursor. Useful for movement checks inside groups of minions and close to heroes.
Callback.Bind(CallbackType.OnDraw, function()
    -- Example 1: Basic usage with friendly units, 1000 rangeFilter:
    -- local path = Game.CreateSpecialPath(Game.localPlayer.position2D, Game.GetCursorWorldPosition():To2D(), true, 1000)

    -- Example 2: include friendly units, 1000 rangeFilter, add 100 extra collision radius and ignore currently selected target:
    local path = Game.CreateSpecialPath(Game.localPlayer.position2D, Game.GetCursorWorldPosition():To2D(), true, 1000, 100, { Game.GetSelectedTarget() and Game.GetSelectedTarget().handle or 0 })

    if path and #path > 0 then
        Renderer.DrawVectorPoly(path, 1, 0xFFFFFFFF) -- Draw full path (overload with std::vector<Vector2> argument)
    end
end)
```]]
---@param startPos Vector2 #Start position.
---@param endPos Vector2 #End position.
---@param includeAllies? boolean #Include friendly units or not. False by default.
---@param rangeFilter? number #(float) Add "fake walls" only to units within this range from start position. 500 by default.
---@param extraCollisionRadius? number #(float) Extra pathfinding collision radius. 0 by default.
---@param excludeObjectHandles? table #(std::unordered_set<unsigned>) Handle list of all objects you want to exclude.
---@param smoothPath? boolean #Return smooth path. True by default.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreateSpecialPath = function(startPos, endPos, includeAllies, rangeFilter, extraCollisionRadius, excludeObjectHandles, smoothPath) end


---Returns special calculated path from given start position to given end position, but it adds "fake walls" under selected objects and custom obstacles.
--[[```lua
-- Example: Get special path from player position to cursor. Useful for movement checks inside groups of minions and close to heroes.
Callback.Bind(CallbackType.OnDraw, function()
    local path = Game.CreateSpecialPathEx(
        Game.localPlayer.position2D,
        Game.GetCursorWorldPosition():To2D(),
        {
            Game.SpecialPathObstacle(Game.localPlayer.position2D + Math.Vector2(500, 0), 100),
            Game.SpecialPathObstacle(TurretTracker.GetClosestAllyTurretPosition(), 500),
        },
        { ObjectType.AIHeroClient, ObjectType.AIMinionClient },
        true,
        1000,
        400,
        { Game.GetSelectedTarget() and Game.GetSelectedTarget().handle or 0 }
    )

    if path and #path > 0 then
        Renderer.DrawVectorPoly(path, 1, 0xFFFFFFFF) -- Draw full path (overload with std::vector<Vector2> argument)
    end
end)
```]]
---@param startPos Vector2 #Start position.
---@param endPos Vector2 #End position.
---@param customObstacles? table #(std::vector<SpecialPathObstacle>) A list of custom obstacles.
---@param includeObjectTypes? table #(std::unordered_set<ObjectType>) A list of all game object types you want to include.
---@param includeAllies? boolean #Include friendly units or not. False by default.
---@param rangeFilter? number #(float) Add "fake walls" only to units within this range from start position. 500 by default.
---@param extraCollisionRadius? number #(float) Extra pathfinding collision radius. 0 by default.
---@param excludeObjectHandles? table #(std::unordered_set<unsigned>) Handle list of all objects you want to exclude.
---@param smoothPath? boolean #Return smooth path. True by default.
---@return Vector2[] #(std::vector<Vector2>)
Game.CreateSpecialPathEx = function(startPos, endPos, customObstacles, includeObjectTypes, includeAllies, rangeFilter, extraCollisionRadius, excludeObjectHandles, smoothPath) end

---Issue order in safe way.
---@param orderType IssueOrderType #
---@return boolean
Game.IssueOrder = function(orderType) end

---Issue order in safe way to a position.
---@param orderType IssueOrderType #
---@param position Vector2 #
---@return boolean
Game.IssueOrder = function(orderType, position) end

---Issue order in safe way to a position.
---@param orderType IssueOrderType #
---@param position Vector3 #
---@return boolean
Game.IssueOrder = function(orderType, position) end

---Issue order in safe way to a target.
---@param orderType IssueOrderType #
---@param target AttackableUnit #
---@return boolean
Game.IssueOrder = function(orderType, target) end

---Perform emote.
---@param emoteType Emote #
Game.DoEmote = function(emoteType) end

---Perform mastery emote.
Game.SendMasteryEmote = function() end

---Send chat message.
---@param msg string #Message to be sent. Use /all prefix if you want to send to All Chat.
Game.SendChat = function(msg) end

---Send ping.
---@param targetNetworkID number #(integer) Network ID of the target to ping
---@param position Vector2 #Positiong to ping
---@param pingType PingType #Used ping type
Game.SendPing = function(targetNetworkID, position, pingType) end

---Show ping locally.
---@param sourceHandle number #(integer) Ping source handle
---@param targetHandle number #(integer) Pinged target handle
---@param position Vector2 #Pinged position
---@param pingType PingType #Used ping type
---@param isPlaySound boolean #Play sound or not
---@param isTriggerEvent boolean #Trigger event or not
Game.ShowPing = function(sourceHandle, targetHandle, position, pingType, isPlaySound, isTriggerEvent) end

---Returns if camera is locked
---@return boolean
Game.IsCameraLocked = function() end

---Returns if camera is locked
---@param state boolean #Lock state
Game.CameraLockToggle = function(state) end

