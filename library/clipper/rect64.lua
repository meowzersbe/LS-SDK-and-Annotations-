---Rect64 struct
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/Rect64.htm)
---@class Rect64
---@field left number
---@field top number
---@field right number
---@field bottom number
---@field Width number #Setter automatically recalculates right.
---@field Height number #Setter automatically recalculates bottom.
local Rect64 = {}
Clipper.Rect64 = Rect64

---Returns middle point.
---@return Point64
Rect64.MidPoint = function(self) end

---Returns this Rect64 corners as path.
---@return Path64
Rect64.AsPath = function(self) end

---Checks if this Rect64 contains given Point64.
---@param point Point64 #
---@return bool
Rect64.Contains = function(self, point) end

---Checks if this Rect64 contains given Rect64.
---@param rect Rect64 #
---@return bool
Rect64.Contains = function(self, rect) end

---Checks whether this Rect64 is empty.
---@return bool
Rect64.IsEmpty = function(self) end

---Checks whether this Rect64 intersects given Rect64.
---@param rect Rect64 #
---@return bool
Rect64.Intersects = function(self, rect) end

---Multiplies this Rect64 by given multiplicator.
---@param scale number #
Rect64.Scale = function(self, scale) end

