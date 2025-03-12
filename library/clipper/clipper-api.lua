---Clipper namespace exports and helper functions. 
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/_Body.htm)
---
---**Tip:** Make sure to read [Official Clipper Documentation](https://angusj.com/clipper2/Docs/_Body.htm) for more notes.
---**Caution:** LS uses slightly modified version of Clipper2 and it's not up to date with latest official version.
---@class Clipper
Clipper = {}

---Point64 constructor from non-premultiplied (unscaled) float coordinates.
---@param x number #
---@param y number #
---@return Point64
Clipper.Point64 = function(x, y) end

---Rect64 constructor from non-premultiplied (unscaled) float sides.
---@param left number #
---@param top number #
---@param right number #
---@param bottom number #
---@return Rect64
Clipper.Rect64 = function(left, top, right, bottom) end

---Returns the area of a given polygon.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Area.htm)
---@param path Path64 #
---@return number
Clipper.Area = function(path) end

---Returns the area of given polygons.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Area.htm)
---@param paths Paths64 #
---@return number
Clipper.Area = function(paths) end

---This function is a generic alternative to the Intersect, Difference, Union and XOR functions.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/BooleanOp.htm)
---@param clipType ClipType #
---@param fillRule FillRule #
---@param subjects Paths64 #
---@param clips Paths64 #
---@return Paths64
Clipper.BooleanOp = function(clipType, fillRule, subjects, clips) end

---This function 'unions' closed subject paths without clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Union.htm)
---
---**Tip:** With more complex clipping operations (eg when clipping open paths), you'll need to use the `Clipper64` class directly.
---@param subjects Paths64 #
---@param fillRule FillRule #
---@return Paths64
Clipper.Union = function(subjects, fillRule) end

---This function 'unions' closed subject paths with clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Union.htm)
---
---**Tip:** With more complex clipping operations (eg when clipping open paths), you'll need to use the `Clipper64` class directly.
--[[```lua
-- Example: Full Union example.
Callback.Bind(CallbackType.OnDraw, function()
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

    local union = Clipper.Union(Clipper.CreatePaths64({path1}), Clipper.CreatePaths64({path2}), Clipper.FillRule.NonZero)

    Renderer.DrawPaths(union, 1, Clipper.PointInPolygons(Game.GetCursorWorldPosition(), union) and 0xFF00FF00 or 0xFFFF0000)
end)
```]]
---@param subjects Paths64 #
---@param clips Paths64 #
---@param fillRule FillRule #
---@return Paths64
Clipper.Union = function(subjects, clips, fillRule) end

---This function intersects closed subject paths with clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Intersect.htm)
---
---**Tip:** With more complex clipping operations (eg when clipping open paths), you'll need to use the `Clipper64` class directly.
---@param subjects Paths64 #
---@param clips Paths64 #
---@param fillRule FillRule #
---@return Paths64
Clipper.Intersect = function(subjects, clips, fillRule) end

---This function differences closed subject paths from clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/Difference.htm)
---
---**Tip:** With more complex clipping operations (eg when clipping open paths), you'll need to use the `Clipper64` class directly.
---@param subjects Paths64 #
---@param clips Paths64 #
---@param fillRule FillRule #
---@return Paths64
Clipper.Difference = function(subjects, clips, fillRule) end

---This function 'XORs' closed subject paths and clip paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/XOR.htm)
---
---**Tip:** With more complex clipping operations (eg when clipping open paths), you'll need to use the `Clipper64` class directly.
---@param subjects Paths64 #
---@param clips Paths64 #
---@param fillRule FillRule #
---@return Paths64
Clipper.Xor = function(subjects, clips, fillRule) end

---This function encapsulates `ClipperOffset`, the class that performs both polygon and open path offsetting.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/InflatePaths.htm)
---@param paths Paths64 #
---@param delta number #
---@param joinType JoinType #
---@param endType EndType #
---@param miterLimit number #
---@return Paths64
Clipper.InflatePaths = function(paths, delta, joinType, endType, miterLimit) end

---The function result indicates whether the point is inside, or outside, or on one of the specified polygon's edges.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/PointInPolygon.htm)
---@param point Point64 #
---@param path Path64 #
---@return PointInPolygonResult
Clipper.PointInPolygon = function(point, path) end

---Returns whether given position is inside given polygon.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param point Point64 #
---@param path Path64 #
---@return boolean
Clipper.PointInPolygonBool = function(point, path) end

---Returns whether given position is inside given polygon. Accepts Vector2 with non-premultiplied (unscaled) coordinates.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param point Vector2 #Position with non-premultiplied (unscaled) coordinates.
---@param path Path64 #
---@return boolean
Clipper.PointInPolygonBool = function(point, path) end

---Returns whether given position is inside given polygon. Accepts Vector3 with non-premultiplied (unscaled) coordinates.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param point Vector3 #Position with non-premultiplied (unscaled) coordinates.
---@param path Path64 #
---@return boolean
Clipper.PointInPolygonBool = function(point, path) end

---Returns whether given position is inside given polygons.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param point Point64 #
---@param paths Paths64 #
---@return boolean
Clipper.PointInPolygons = function(point, paths) end

---Returns whether given position is inside given polygons. Accepts Vector2 with non-premultiplied (unscaled) coordinates.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
--[[```lua
-- Example: PointInPolygons example.
local isInside = Clipper.PointInPolygons(Game.GetCursorWorldPosition():To2D(), polygonPaths)
```]]
---@param point Vector2 #Position with non-premultiplied (unscaled) coordinates.
---@param paths Paths64 #
---@return boolean
Clipper.PointInPolygons = function(point, paths) end

---Returns whether given position is inside given polygons. Accepts Vector3 with non-premultiplied (unscaled) coordinates.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param point Vector3 #Position with non-premultiplied (unscaled) coordinates.
---@param paths Paths64 #
---@return boolean
Clipper.PointInPolygons = function(point, paths) end

---This function assesses the winding orientation of closed paths.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/IsPositive.htm)
---
---**Note:** Positive winding paths will be oriented in an anti-clockwise direction in Cartesian coordinates (where x coordinate values increase toward the right and y coordinate values increase upward). However, in graphics display libraries that use an inverted Y-axis, Positive winding paths will be oriented clockwise.<br/><br/>Note: Self-intersecting polygons have indeterminate orientation since some path segments will wind in opposite directions to other segments.
---@param path Path64 #
---@return boolean
Clipper.IsPositive = function(path) end

---Builds Path64 from a string with given coordinates.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/MakePath.htm)
---
---**Caution:** This function is different in most recent Clipper version.
---@param pathStr string #
---@return Path64
Clipper.MakePath = function(pathStr) end

---This function performs Minkowski Addition.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/MinkowskiSum.htm)
---
---**Tip:** For an explanation of this function see [Minkowski Addition at Wikipedia](https://en.wikipedia.org/wiki/Minkowski_addition).
---@param pattern Path64 #
---@param path Path64 #
---@param isClosed boolean #
Clipper.MinkowskiSum = function(pattern, path, isClosed) end

---This function performs Minkowski Difference.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/MinkowskiDiff.htm)
---
---**Tip:** For an explanation of this function see [Minkowski Addition at Wikipedia](https://en.wikipedia.org/wiki/Minkowski_addition).
---@param pattern Path64 #
---@param path Path64 #
---@param isClosed boolean #
Clipper.MinkowskiDiff = function(pattern, path, isClosed) end

---Clips given path with a given Rect64 clipping region.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/RectClip.htm)
---
---**Tip:** This function is extremely fast when compared to the general purpose clipper. Read more at Clipper's official documentation page.
---@param rect Rect64 #
---@param subject Path64 #
---@return Path64
Clipper.RectClip = function(rect, subject) end

---Clips given paths with a given Rect64 clipping region.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/RectClip.htm)
---
---**Tip:** This function is extremely fast when compared to the general purpose clipper. Read more at Clipper's official documentation page.
---@param rect Rect64 #
---@param subjects Paths64 #
---@return Paths64
Clipper.RectClip = function(rect, subjects) end

---Intersects open subject path (polylines) with specified Rect64 clipping region.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/RectClipLines.htm)
---
---**Tip:** This function is extremely fast when compared to the general purpose clipper. Read more at Clipper's official documentation page.
---@param rect Rect64 #
---@param subject Path64 #
---@return Paths64
Clipper.RectClipLines = function(rect, subject) end

---Intersects open subject paths (polylines) with specified Rect64 clipping region.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/RectClipLines.htm)
---
---**Tip:** This function is extremely fast when compared to the general purpose clipper. Read more at Clipper's official documentation page.
---@param rect Rect64 #
---@param subjects Paths64 #
---@return Paths64
Clipper.RectClipLines = function(rect, subjects) end

---Reverses the vertex order (and hence orientation) in the specified path.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/ReversePath.htm)
---@param path Path64 #
Clipper.ReversePath = function(path) end

---This function removes vertices that are less than the specified epsilon distance from an imaginary line that passes through its 2 adjacent vertices.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/SimplifyPath.htm)
---
---**Tip:** This function is strongly recommended following offsetting (ie inflating/shrinking), especially when offsetting paths multiple times. Offsetting often creates tiny segments that don't improve path quality. Further these tiny segments can be at angles that have been affected by integer rounding. While these tiny segments are too small to be noticeable following a single offset procedure, they can degrade both the shape quality and the performance of subsequent offsets.
---@param path Path64 #
---@param epsilon number #
---@param isOpenPath boolean #
---@return Path64
Clipper.SimplifyPath = function(path, epsilon, isOpenPath) end

---This function removes vertices that are less than the specified epsilon distance from an imaginary line that passes through its 2 adjacent vertices.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/SimplifyPaths.htm)
---
---**Tip:** This function is strongly recommended following offsetting (ie inflating/shrinking), especially when offsetting paths multiple times. Offsetting often creates tiny segments that don't improve path quality. Further these tiny segments can be at angles that have been affected by integer rounding. While these tiny segments are too small to be noticeable following a single offset procedure, they can degrade both the shape quality and the performance of subsequent offsets.
---@param paths Paths64 #
---@param epsilon number #
---@param isOpenPath boolean #
---@return Paths64
Clipper.SimplifyPaths = function(paths, epsilon, isOpenPath) end

---Custom variation of SimplifyPath.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param path Path64 #
---@param epsilon number #
---@param isOpenPath boolean #
---@return Path64
Clipper.SafeSimplifyPath = function(path, epsilon, isOpenPath) end

---Custom variation of SimplifyPaths.
---
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param paths Paths64 #
---@param epsilon number #
---@param isOpenPath boolean #
---@return Path64
Clipper.SafeSimplifyPaths = function(paths, epsilon, isOpenPath) end

---This function translates a path the specified distances relative to the X and Y axes.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/TranslatePath.htm)
---
---**Caution:** You must scale up dx and dy with multiplying by used Clipper Scale (`Clipper.GetScale()`)
---@param path Path64 #
---@param dx number #
---@param dy number #
---@return Path64
Clipper.TranslatePath = function(path, dx, dy) end

---This function removes the vertices between adjacent collinear segments. It will also remove duplicate vertices (adjacent vertices with identical coordinates).<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Functions/TrimCollinear.htm)
---
---**Tip:** While duplicate vertices will be removed automatically from clipping solutions, collinear edges will not unless the Clipper object's PreserveCollinear property had been disabled.
---@param path Path64 #
---@param isOpenPath boolean #
---@return Path64
Clipper.TrimCollinear = function(path, isOpenPath) end

---Creates Path64 (`std::vector<Point64>`) container from a given Lua table of `Point64`.
---
---**Tip:** This is useful to create `Path64` container to be used with various Clipper functions.<br/><br/>It can be used with empty table to create empty container.
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
---@param pathTable table #(Point64[]) Lua table with `Point64`
---@return Path64
Clipper.CreatePath64 = function(pathTable) end

---Creates Path64 (`std::vector<Point64>`) container from a given Lua table of `Vector2` with non-premultiplied (unscaled) coordinates.
---
---**Tip:** This is useful to create `Path64` container to be used with various Clipper functions.<br/>**Unlike `CreatePath64`, this function is extremely useful because you can provide normal Vector2 positions.**<br/><br/>It can be used with empty table to create empty container.
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
--[[```lua
-- Example: Basic CreatePath64FromVectors usage example.
local pos = Game.localPlayer.position2D

local path = Clipper.CreatePath64FromVectors({
    Math.Vector2(pos.x - 300, pos.y - 300),
    Math.Vector2(pos.x + 300, pos.y - 300),
    Math.Vector2(pos.x + 300, pos.y + 300),
    Math.Vector2(pos.x - 300, pos.y + 300),
})
```]]
---@param pathTable table #(Vector2[]) Lua table with `Vector2`
---@return Path64
Clipper.CreatePath64FromVectors = function(pathTable) end

---Creates Paths64 (`std::vector<Path64>`) container from a given Lua table of `Path64`.
---
---**Tip:** This is useful to create `Paths64` container to be used with various Clipper functions.<br/><br/>It can be used with empty table to create empty container.
---**Note:** This function is not a part of official Clipper library. It is a helper function available only in LS SDK.
--[[```lua
-- Example: Basic CreatePaths64 usage example.
local path = Clipper.CreatePath64FromVectors({
    -- ...
})

local paths = Clipper.CreatePaths64({path})
```]]
---@param pathsTable table #(Path64[]) Lua table with `Path64`
---@return Paths64
Clipper.CreatePaths64 = function(pathsTable) end

---Returns scale used in Clipper.
---
---**Tip:** You can avoid using it with several helper functions which accept `Vector2` or `Vector3` with non-premultiplied (unscaled) coordinates.
---@return number
Clipper.GetScale = function() end
