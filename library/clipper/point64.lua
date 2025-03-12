---Point64 struct
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/Point64.htm)
---
---**Note:** The Point64 structure is used to represent a single vertex (or coordinate) in a series that together make a path or contour (see Path64). Closed paths are usually referred to as polygons, and open paths are referred to as lines or polylines.
---**Caution:** All coordinates are represented internally using integers as this is the only way to ensure numerical robustness. While the library also accepts floating point coordinates (see PointD), these will be converted into integers internally (using user specified scaling).
---@class Point64
---@field x number #X coordinate.
---@field y number #Y coordinate.
local Point64 = {}
Clipper.Point64 = Point64

---Negates coordinates of this Point64.
Point64.Negate = function(self) end

---Multiply operator.
---@param scale number #Multiplicator.
---@return Point64
Point64.__mul = function(self, scale) end

---Addition operator.
---@param point Point64 #Second point.
---@return Point64
Point64.__add = function(self, point) end

---Subtraction operator.
---@param point Point64 #Second point.
---@return Point64
Point64.__sub = function(self, point) end

---tostring operator.
---@return string
Point64.__tostring = function(self) end

