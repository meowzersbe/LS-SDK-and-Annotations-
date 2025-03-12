---Evade API
---@class Evade
Evade = {}

---Returns whether player is evading at this moment or not.
---@return boolean
Evade.IsEvading = function() end

---Checks if there are any skillshots at given position.
---@param position Vector2 #Checked position.
---@param bGetDangerLevel? boolean #If true this function will also return highest DangerLevel from all skillshots at given position.
---@param bIncludeIgnored? boolean #If true this function will include all ignored skillshots.
---@return boolean, DangerLevel
Evade.IsInsideSkillshots = function(position, bGetDangerLevel, bIncludeIgnored) end

---Checks if Vector2[] path is crossing any skillshots.
---
--[[```lua
-- Example: Check if line between player and cursor is crossing any skillshots
local heroPos = Game.localPlayer.position2D
local cursorPos = Game.GetCursorWorldPosition():To2D()
print(Evade.IsCrossingSkillshots({heroPos, cursorPos}))
```]]
---@param path Vector2[] #Checked path.
---@param bIncludeIgnored? boolean #If true this function will include all ignored skillshots.
---@return boolean
Evade.IsCrossingSkillshots = function(path, bIncludeIgnored) end

---Returns skillshots at given position.
---
--[[```lua
-- Example: Print all skillshots' names at player position
local skillshots = Evade.GetSkillshotsAtPosition(Game.localPlayer.position2D)
if skillshots and #skillshots > 0 then
    for i, ss in skillshots:pairs() do
        print(ss.SpellData.Name)
    end
end
```]]
---@param position Vector2 #Checked position.
---@param bIncludeIgnored? boolean #If true this function will include all ignored skillshots.
---@return Skillshot[] #(std::vector<Skillshot>)
Evade.GetSkillshotsAtPosition = function(position, bIncludeIgnored) end

---Returns skillshots which intersect with given path.
---@param path Vector2[] #Given path.
---@param bIncludeIgnored? boolean #If true this function will include all ignored skillshots.
---@return Skillshot[] #(std::vector<Skillshot>)
Evade.GetSkillshotsCrossingPath = function(path, bIncludeIgnored) end

---Ignores all skillshots at given position.
---@param position Vector2 #Given position.
Evade.IgnoreSkillshotsAtPosition = function(position) end

---Set custom hook function which determines which spells should be ignored by Evade.
---
---**Tip:** This may be useful to create a script with custom rules, which will determine what skillshots should be ignored by Evade.
---**Danger:** If your code is using this, please make sure to call this function with nil argument in OnUnload to avoid weird bugs.
--[[```lua
-- Example: Ignore absolutely all skillshots
 Evade.SetCustomShouldSpellBeIgnored(function(skillshot)
     return true -- Ignore this skillshot
 end)
 -- Dispose:
 Callback.Bind(CallbackType.OnUnload, function()
     Evade.SetCustomShouldSpellBeIgnored(nil)
 end)
```]]
---@param fn fun(ss: Skillshot): boolean #Custom function which accepts Skillshot as parameter and must return true or false if given skillshot should be ignored by Evade.
Evade.SetCustomShouldSpellBeIgnored = function(fn) end

---Returns damage from skillshots at given position.
---@param position Vector2 #Checked position.
---@param bCheckIfCanEvade boolean #If true then only spells which can't be dodged will be taken in count.
---@return number #(float)
Evade.GetSkillshotsDamage = function(position, bCheckIfCanEvade) end

---Returns damage from skillshots casted by certain caster source.
---@param caster AIBaseClient #Checked source unit.
---@return number #(float)
Evade.GetSkillshotsDamageFrom = function(caster) end

---Returns meta data of all skillshots supported by Evade in current game.
---**Note:** Signature with keys: `std::map<charName, std::map<spellName, SpellMetaData>>`
---**Tip:** This may be useful for developers to retrieve supported spells by Evade and their metadata so you can add specific settings in your scripts.
--[[```lua
-- Example: Basic usage with some explanation
-- First make sure that Evade is loaded and initialized.
-- Then call this function to retrieve meta data for all supported spells.
-- You can match skillshot's spell data to this meta data by comparing SpellMetaData.UniqueID and SpellData:GetUniqueID()
-- If you want to create in your script a special menu with settings for each supported skillshots - this function will be helpful to you, but keep in mind:
-- UniqueID is not static and doesn't remain the same between games. It is important to understand this - never use UniqueID in keys for your menus.
local evadeSpellMetaData = Evade.GetSupportedSpellsMetaData()
if evadeSpellMetaData then
    for i, v in evadeSpellMetaData:pairs() do
        print(i)
        for k, b in v:pairs() do
            print("", k, b.UniqueID)
        end
    end
end
```]]
---@return std::map<string, std::map<string, SpellMetaData>>
Evade.GetSupportedSpellsMetaData = function() end

