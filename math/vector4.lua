---Vector4 class
---@class Vector4
---@field x number
---@field y number
---@field z number
---@field w number
Vector4 = {}

---Returns a Vector4 \(x =x, y =y, z=z, w=w\).
---@return Vector4
Vector4.Copy = function(self) end

---Returns vector length.
---@return number
Vector4.Length = function(self) end

---Returns vector length **square**.
---@return number
Vector4.Length2 = function(self) end

---Returns distance from v to v2.
---@param v2 Vector4 #Point2.
---@return number
Vector4.Distance = function(self, v2) end

---Returns distance **square** from v to v2.
---@param v2 Vector4 #Point2.
---@return number
Vector4.Distance2 = function(self, v2) end

---Returns dot product result.
---@param v2 Vector4 #Point2.
---@return number
Vector4.Dot = function(self, v2) end

---Returns a normalized Vector4 from this vector.
---@return Vector4
Vector4.Normalize = function(self) end

---Returns Linear interpolation. V1 + s \(V2-V1\)
---@param v2 Vector4 #Point2.
---@param time number #(float) Time.
---@return Vector3
Vector4.Lerp = function(self, v2, time) end

---Returns two numbers x,y.z,w
---@return number, number, number, number
Vector4.Unpack = function(self) end

---Randomizes vector a little.
---@return Vector4
Vector4.Randomize = function(self) end

