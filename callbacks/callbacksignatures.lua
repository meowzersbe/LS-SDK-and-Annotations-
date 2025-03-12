---Callback Usage
---**Title:** Callback Signatures
---
---**Note:** Not all callbacks utilize `CallbackResult` return.
---@class CallbackSignatures
CallbackSignatures = {}

---Fired every time the game renders a frame. Can be used to draw to the screen using renderer functions.
---@return CallbackResult
CallbackSignatures.OnDraw = function() end

---Fired every time the game renders a frame with ImGui. Can be used to draw to the screen using ImGui functions.
---@return CallbackResult
CallbackSignatures.OnImguiDraw = function() end

---Fired every time the game update object. Can be used to run champion logic.
---@return CallbackResult
CallbackSignatures.OnTick = function() end

---Fired every time the game update object. Can be used to run champion logic. Faster than on tick, do not use if not necessary.
---@return CallbackResult
CallbackSignatures.OnFastTick = function() end

---Fired when script unload. Make sure to dispose of your objects and clean up with this callback.
---@return CallbackResult
CallbackSignatures.OnUnload = function() end

---Fired before orbwalker want to attack someone.
---@param beforeAttackOrbwalkerArgs BeforeAttackOrbwalkerArgs #
---@return CallbackResult
CallbackSignatures.OnBeforeAttack = function(beforeAttackOrbwalkerArgs) end

---Fired when orbwalker finishes an attack.
---@param afterAttackOrbwalkerArgs AfterAttackOrbwalkerArgs #
---@return CallbackResult
CallbackSignatures.OnAfterAttack = function(afterAttackOrbwalkerArgs) end

---Fired when issuing movement or attack order.
--[[```lua
-- Example: Example: Cancel any IssueOrder
Callback.Bind(CallbackType.OnIssueOrder, function(issueOrderArgs)
    return CallbackResult.Cancel -- Read more about CallbackResult and alternative options
end)
```]]
---@param issueOrderArgs IssueOrderArgs #
---@return CallbackResult
CallbackSignatures.OnIssueOrder = function(issueOrderArgs) end

---Fired on manual spell cast by the user (before OnSpellCast).
---@param spellData Spell #(Spelldata Class) 
---@param targetHandle number #(integer) 
---@return CallbackResult
CallbackSignatures.OnCastHud = function(spellData, targetHandle) end

---Fired on client-side spell cast.
---@param castSpellArgs CastSpellArgs #
---@return CallbackResult
CallbackSignatures.OnSpellCast = function(castSpellArgs) end

---Fired on client-side spell cast 2 (alternate).
---@param castSpellArgs CastSpellArgs #
---@return CallbackResult
CallbackSignatures.OnSpellCast2 = function(castSpellArgs) end

---Fired on input validate (Hwei).
---@param hweicastArgs hweicast_args #
---@return CallbackResult
CallbackSignatures.OnValidateInput = function(hweicastArgs) end

---Fired when a spell cast is started.
---@param sender AIBaseClient #
---@param castArgs CastArgs #
---@return CallbackResult
CallbackSignatures.OnSpellAnimationStart = function(sender, castArgs) end

---Fired when a spell cast is finished.
---@param sender AIBaseClient #
---@param castArgs CastArgs #
---@return CallbackResult
CallbackSignatures.OnSpellCastComplete = function(sender, castArgs) end

---Fired when a spell cast is stopped.
---@param sender AIBaseClient #
---@param castArgs CastArgs #
---@return CallbackResult
CallbackSignatures.OnSpellAnimationCancel = function(sender, castArgs) end

---Fired when missile is being updated. For example for Yuumi Q. You can edit the position.
--[[```lua
-- Example: OnUpdateMissile example
Callback.Bind(CallbackType.OnUpdateMissile, function(pos)
    pos.x = Game.GetCursorWorldPosition().x + 500
end)
```]]
---@param pos Vector3 #
---@return CallbackResult
CallbackSignatures.OnUpdateMissile = function(pos) end

---Fired when chargeable spell is updated.
---@param spellBook SpellBook #
---@param spellBookEntry SpellBookEntry #
---@param slot SpellSlot #
---@param pos Vector3 #
---@param isRelease boolean #
---@return CallbackResult
CallbackSignatures.OnUpdateChargeableSpell = function(spellBook, spellBookEntry, slot, pos, isRelease) end

---Fired when a spell slot name change.
---@param sender AIBaseClient #
---@param slot SpellSlot #
---@param name string #
---@return CallbackResult
CallbackSignatures.OnChangeSlotSpellName = function(sender, slot, name) end

---Fired when evolving a spell.
---@param slot SpellSlot #
---@return CallbackResult
CallbackSignatures.OnEvolve = function(slot) end

---Fired when GameObject is created.
---@param sender GameObject #
---@return CallbackResult
CallbackSignatures.OnObjectCreate = function(sender) end

---Fired when GameObject is removed.
---@param sender GameObject #
---@return CallbackResult
CallbackSignatures.OnObjectRemove = function(sender) end

---Fired when a message is printed to game chat.
---@param message string #
---@param flags number #(integer) 
---@return CallbackResult
CallbackSignatures.OnPrintChat = function(message, flags) end

---Fired when when unit gets a new path.
---
---**Caution:**  I think sometimes this callback is not reliable. When Leesin R kick someone path may incorrect.
--[[```lua
-- Example: OnNewPath Callback Example
Callback.Bind(CallbackType.OnNewPath,function(sender,isDash,dashSpeed,path)
    for i, v in path:pairs() do
         PrintChat(tostring(i))
         PrintChat(tostring(v))
    end
end)
```]]
---@param sender AIbaseClient #
---@param isDash boolean #
---@param dashSpeed number #
---@param path Vector3[] #(std::vector<Vector3>) Path
---@return CallbackResult
CallbackSignatures.OnNewPath = function(sender, isDash, dashSpeed, path) end

---Fired when unit gains or loses a buff.
---@param buffScriptInstance BuffScript #
---@param isGain boolean #
---@return CallbackResult
CallbackSignatures.OnGainLoseBuff = function(buffScriptInstance, isGain) end

---Fired when one of unit buffs is updated.
---@param sender AIBaseClient #
---@param buffInstance Buff #
---@return CallbackResult
CallbackSignatures.OnUpdateBuff = function(sender, buffInstance) end

---Fired when unit plays some animation.
---@param sender AIBaseClient #
---@param animationName string #
---@return CallbackResult
CallbackSignatures.OnPlayAnimation = function(sender, animationName) end

---Fired on various game events such as surrender vote.
---@param eventName string #Event name string
---@param eventID number #(integer) Event name ID
---@param sourceNetworkID number #(integer) Source entity network ID
---@return CallbackResult
CallbackSignatures.OnNotify = function(eventName, eventID, sourceNetworkID) end

---Fired when player pings something. This event can be cancelled similar to OnSpellCast or OnIssueOrder.
---@param pos Vector3 #Pinged position
---@param targetNetworkID number #(integer) Pinged target network ID
---@param type PingType #Used ping type
---@return CallbackResult
CallbackSignatures.OnSendPing = function(pos, targetNetworkID, type) end

---Fired on any ping.
---@param pos Vector3 #Pinged position
---@param targetHandle number #(integer) Pinged target handle
---@param sourceHandle number #(integer) Source handle
---@param type PingType #Used ping type
---@param isPlaySound boolean #Is playing sound
---@return CallbackResult
CallbackSignatures.OnShowPing = function(pos, targetHandle, sourceHandle, type, isPlaySound) end

---Fired on minimap icon change.
---@param sender AIBaseClient #Sender entity
---@param name string #Icon name
---@param type string #Icon type
---@return CallbackResult
CallbackSignatures.OnMinimapIconChange = function(sender, name, type) end

---Fired when we receive packet from server.
---@param opcode string #
---@param networkID number #
---@return CallbackResult
CallbackSignatures.OnPacketReceive = function(opcode, networkID) end

---Fired on user keyboard or mouse input.
---@param hwnd string #
---@param message string #
---@param wParam string #
---@param lParam string #
---@return CallbackResult
CallbackSignatures.OnWndProc = function(hwnd, message, wParam, lParam) end

---Fired when Evade takes action to dodge something.
---@param position Vector2 #Position where evade will try to dodge.
---@param spellData? SpellData #Spell data of evading ability spell unless it was movement.
CallbackSignatures.OnEvade = function(position, spellData) end

---Fired when Evade creates an instance of skillshot.
---@param skillshot Skillshot #Skillshot instance created by Evade.
CallbackSignatures.OnSkillshotCreate = function(skillshot) end

