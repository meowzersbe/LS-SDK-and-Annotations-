---CollisionFlag bitflag
---
---**Tip:** You can use bit operations to construct multi flag. See [`bit library`](/developers/sdk-documentation/library/bit).
--[[```lua
-- Example: Set Collides with Minions, YasuoWall and Heroes
collisionFlags = bit.bor(CollisionFlag.CollidesWithYasuoWall,CollisionFlag.CollidesWithMinions,CollisionFlag.CollidesWithHeroes)
Champions.Q:SetSkillshot(0.25,60,1000,SkillshotType.SkillshotLine,true,collisionFlags,HitChance.High,true)
```]]
---@class CollisionFlag
---@field CollidesWithNothing number
---@field CollidesWithYasuoWall number
---@field CollidesWithMinions number
---@field CollidesWithWalls number
---@field CollidesWithStructures number
---@field CollidesWithHeroes number
CollisionFlag = {}

