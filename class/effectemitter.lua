---Effect object. Inherited from GameObject.
---
---**Tip:** These properies are useful to identify EffectEmitter object by their key rather than by object name.
--[[```lua
-- Example: Identifying Syndra Q Gather objects
local SyndraQGatherKey = 3075502988         -- Syndra_Base_Q_2021_aoe_gather, Syndra_Skin01_Q_aoe_gather, etc
local SyndraQGatherLv5Key = 3214691578      -- Syndra_Base_Q_Lv5_aoe_gather
Callback.Bind(CallbackType.OnObjectCreate, function(object)
    if not object or not object:IsValid() then return end
    if object.type ~= ObjectType.obj_GeneralParticleEmitter then return end

    local source = object.effectSourceFirst and object.effectSourceFirst:IsValid() and object.effectSourceFirst

    if source and source.isEnemy and (effectKey == SyndraQGatherKey or effectKey == SyndraQGatherLv5Key) then
        -- ...
    end
end)
```]]
---@class EffectEmitter : GameObject
---@field effectKey number #Unique effect key. This key is the same for different versions of EffectEmitter object despite the skin and hostility.
---@field effectSourceList GameObject[] #(std::vector<GameObject>) A list of sources. Apparently each EffectEmitter can have multiple sources.
---@field effectSourceFirst GameObject #First source of this EffectEmitter. Added for convenience.
EffectEmitter = {}

---Returns attached object (if it has any). Same as previous `GetFollowTarget`.
---@return GameObject
EffectEmitter.GetAttachedObject = function(self) end

---Returns attached target object (if it has any).
---@return GameObject
EffectEmitter.GetAttachedTargetObject = function(self) end

---Returns followed object (if it follows any).
---
---**Danger:** This function is deprecated. Use [`GetAttachedObject`](#getattachedobject) instead.
---@deprecated
---@return GameObject
EffectEmitter.GetFollowTarget = function(self) end

