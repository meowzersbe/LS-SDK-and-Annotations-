---ClipperOffset class
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/_Body.htm)
---
---**Note:** Geometric offsetting refers to the process of creating parallel curves that are offset a specified distance from their primary curves.<br/><br/>The ClipperOffset class manages the process of offsetting (inflating/deflating) both open and closed paths using a number of different join types and end types. The library user will rarely need to access this unit directly since it will generally be easier to use the InflatePaths function when doing polygon offsetting.
---@class ClipperOffset
---@field ArcTolerance boolean #ArcTolerance is only relevant when offsetting with JoinType.Round and / or EndType.Round (see ClipperOffset.AddPath and ClipperOffset.AddPaths).<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Properties/ArcTolerance.htm)
---@field MiterLimit boolean #This property sets the maximum distance in multiples of delta that vertices can be offset from their original positions before squaring is applied. (Squaring truncates a miter by 'cutting it off' at 1 × delta distance from the original vertex.)<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Properties/MiterLimit.htm)
---@field ReverseSolution boolean #Reverses the solution's orientation.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Properties/ReverseSolution.htm)
local ClipperOffset = {}
Clipper.ClipperOffset = ClipperOffset

---ClipperOffset constructor.
ClipperOffset.new = function() end

---This method clears all paths from the `ClipperOffset` object, allowing new paths to be assigned.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Functions/Clear.htm)
ClipperOffset.Clear = function(self) end

---Adds `Path64` to a `ClipperOffset` object in preparation for offsetting.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Functions/AddPath.htm)
---@param path Path64 #
---@param joinType JoinType #
---@param endType EndType #
ClipperOffset.AddPath = function(self, path, joinType, endType) end

---Adds `Paths64` to a `ClipperOffset` object in preparation for offsetting.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Functions/AddPath.htm)
---@param paths Paths64 #
---@param joinType JoinType #
---@param endType EndType #
ClipperOffset.AddPath = function(self, paths, joinType, endType) end

---Executes offset (inflating/deflating) operation.<br/>[Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper.Offset/Classes/ClipperOffset/Functions/Execute.htm)
---
---**Tip:** With closed paths (polygons), a positive delta specifies how much outer polygon contours will expand and how much inner "hole" contours will contract (and the converse with negative deltas).<br/><br/>With open paths (polylines) including EndType.Joined, delta specifies the width of the inflated line.<br/><br/>Execute can also be called multiple times (using different deltas).
---@param delta number #
---@return Paths64
ClipperOffset.Execute = function(self, delta) end
