---Clipper64 class
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/_Body.htm)
---
---**Note:** The Clipper class performs boolean 'clipping' using coordinates of type Int64.
---**Caution:** All coordinates are represented internally using integers as this is the only way to ensure numerical robustness. While the library also accepts floating point coordinates (see PointD), these will be converted into integers internally (using user specified scaling).
---**Tip:** Subject and Clip paths are passed to a Clipper object via AddSubject, AddOpenSubject and AddClip methods. Clipping operations are then initiated by calling Execute. And Execute can be called multiple times (ie with different ClipTypes & FillRules) without having to reload these paths.
---@class Clipper64
---@field PreserveCollinear boolean #Whenever adjacent edges are collinear in closed path solutions, the common vertex can be removed from the path without altering its shape. However, because some users prefer to retain these vertices, this feature is optional. Nevertheless, when adjacent edges in solutions are 180 degree collinear (creating overlapping edge 'spikes'), these vertices will be removed irrespective of the PreserveCollinear setting.<br/>This property is enabled by default.
---@field ReverseSolution boolean #Reverses the solution's orientation. Normally, closed paths will have Positive orientation.
local Clipper64 = {}
Clipper.Clipper64 = Clipper64

---Clipper64 constructor.
Clipper64.new = function() end

---The Clear method removes any existing subject and clip polygons allowing the Clipper object to be reused for clipping operations on different polygon sets.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/Clear.htm)
Clipper64.Clear = function(self) end

---Adds one or more closed subject paths (polygons) to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddSubject.htm)
---@param path Path64 #
Clipper64.AddSubject = function(self, path) end

---Adds one or more closed subject paths (polygons) to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddSubject.htm)
---@param paths Paths64 #
Clipper64.AddSubject = function(self, paths) end

---Adds one or more open subject paths (polylines) to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddOpenSubject.htm)
---@param path Path64 #
Clipper64.AddOpenSubject = function(self, path) end

---Adds one or more open subject paths (polylines) to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddOpenSubject.htm)
---@param paths Paths64 #
Clipper64.AddOpenSubject = function(self, paths) end

---Adds one or more clip polygons to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddClip.htm)
---@param path Path64 #
Clipper64.AddClip = function(self, path) end

---Adds one or more clip polygons to the Clipper64 object.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/AddClip.htm)
---@param paths Paths64 #
Clipper64.AddClip = function(self, paths) end

---Executes clipping operation from given settings and pre-assigned subject and clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/Execute.htm)
---
--[[```lua
-- Example: Full example of Union operation using Clipper64 object.
local Clipper64 = Clipper.Clipper64.new();

Callback.Bind(CallbackType.OnDraw, function()
    Clipper64:Clear()
    
    local pos = Game.localPlayer.position2D

    local path1 = Clipper.CreatePath64FromVectors({
        Math.Vector2(pos.x - 300, pos.y - 300),
        Math.Vector2(pos.x + 300, pos.y - 300),
        Math.Vector2(pos.x + 300, pos.y + 300),
        Math.Vector2(pos.x - 300, pos.y + 300),
    })

    local path2 = Clipper.CreatePath64FromVectors({
        Math.Vector2(pos.x - 200 + 300, pos.y - 200),
        Math.Vector2(pos.x + 200 + 300, pos.y - 200),
        Math.Vector2(pos.x + 200 + 300, pos.y + 200),
        Math.Vector2(pos.x - 200 + 300, pos.y + 200),
    })

    Clipper64:AddSubject(path1)
    Clipper64:AddSubject(path2)

    local paths = Clipper.CreatePaths64({}) -- Output
    Clipper64:Execute(Clipper.ClipType.Union, Clipper.FillRule.NonZero, paths)

    -- Determine color based on whether our cursor is inside this polygon or not:
    local color = Clipper.PointInPolygons(Game.GetCursorWorldPosition(), union) and 0xFF00FF00 or 0xFFFF0000

    -- Draw:
    Renderer.DrawPaths(union, 1, color)
end)
```]]
---@param clipType ClipType #
---@param fillRule FillRule #
---@param closedPaths Paths64 #Output for closed paths.
---@return boolean
Clipper64.Execute = function(self, clipType, fillRule, closedPaths) end

---Executes clipping operation from given settings and pre-assigned subject and clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Engine/Classes/Clipper64/Functions/Execute.htm)
---@param clipType ClipType #
---@param fillRule FillRule #
---@param closedPaths Paths64 #Output for closed paths.
---@param openPaths Paths64 #Output for open paths.
---@return boolean
Clipper64.Execute = function(self, clipType, fillRule, closedPaths, openPaths) end
