---Vector3 class.
---@class Vector3
---@field x number
---@field y number
---@field z number
Vector3 = {}

---Returns whether this vector is not (0, 0, 0)
---@return boolean
Vector3.IsValid = function(self) end

---Returns a Vector2 \(x =x, y =z\).
---@return Vector2
Vector3.To2D = function(self) end

---Returns a Vector3 \(x =x, y =y, z=z\).
---@return Vector3
Vector3.To3D = function(self) end

---Returns a Vector3 \(x =x, y =y, z=z\).
---@return Vector3
Vector3.Copy = function(self) end

---Returns this **ref** Vector3 \(x =x, y =GameMapHeight, z=z\).
---@return Vector3
Vector3.FixHeight = function(self) end

---Performs WorldToScreen operation and returns a screen position as Vector3 where X and Y are 2D coordinates and Z can be used for on screen check.
---**Tip:** Z coordinate can be used to check if position is on screen: If Z > 0.01 - it is on screen.
---@return Vector3
Vector3.Project = function(self) end

---Returns navGridCell\(userdata\).
---@return NavGridCell
Vector3.ToCell = function(self) end

---Returns vector length.
---@return number
Vector3.Length = function(self) end

---Returns vector length **square**.
---@return number
Vector3.Length2 = function(self) end

---Returns distance from v to v2.
---@param v2 Vector3 #Point2.
---@return number
Vector3.Distance = function(self, v2) end

---Returns distance **square** from v to v2.
---@param v2 Vector3 #Point2.
---@return number
Vector3.Distance2 = function(self, v2) end

---Returns dot product result.
---@param v2 Vector3 #Point2.
---@return number
Vector3.Dot = function(self, v2) end

---Returns cross product result.
---@param v2 Vector3 #Point2.
---@return Vector3
Vector3.Cross = function(self, v2) end

---Normalizes this vector
Vector3.Normalize = function(self) end

---Returns a normalized Vector3 from this vector.
---@return Vector3
Vector3.Normalized = function(self) end

---Extends this vector towards given vector.
---@param v Vector3 #
---@param distance number #(float)
Vector3.Extend = function(self, v, distance) end

---Returns extended vector towards given vector.
---@param v Vector3 #
---@param distance number #(float)
---@return Vector3
Vector3.Extended = function(self, v, distance) end

---Shortens this vector towards given vector.
---@param v Vector3 #
---@param distance number #(float)
Vector3.Shorten = function(self, v, distance) end

---Returns shortened vector towards given vector.
---@param v Vector3 #
---@param distance number #(float)
---@return Vector3
Vector3.Shortened = function(self, v, distance) end

---Returns Linear interpolation. V1 + s \(V2-V1\)
---@param v2 Vector3 #Point2.
---@param time number #(float) Time.
---@return Vector3
Vector3.Lerp = function(self, v2, time) end

---Returns whether this vector is within certain range of other given Vector3.
---@param v2 Vector3 #Point 2
---@param range number #(float)
---@return boolean
Vector3.IsInRange = function(self, v2, range) end

---Returns two numbers x,y.z
---@return number, number, number
Vector3.Unpack = function(self) end

---Returns navGridCell\(userdata\).
---@return NavGridCell
Vector3.ToCell = function(self) end

---Returns relative position in direction from v to v2 as Vector3.
---@param v2 Vector3 #Point2.
---@param distance number #(float) Distance to extended.
---@return Vector3
Vector3.RelativePos = function(self, v2, distance) end

---Returns relative flat position in direction from v to v2 as Vector 2 with corrected height.
---@param v2 Vector3 #Point2.
---@param distance number #(float) Distance to extended.
---@return Vector3
Vector3.RelativeFlatPos = function(self, v2, distance) end

---Randomizes vector a little.
---@return Vector3
Vector3.Randomize = function(self) end

---Returns normalized direction vector.
---@return Vector3
Vector3.Direction = function(self) end

---Returns normal.
---@return Vector3
Vector3.Normal = function(self) end

---Returns **flat** distance from this to v2.
---@param v2 Vector3 #Point2.
---@return number
Vector3.FlatDistance = function(self, v2) end

---Returns **flat** distance from this to v2.
---@param v2 Vector2 #Point2.
---@return number
Vector3.FlatDistanceToVec2 = function(self, v2) end

---Returns if vector3 is under enemy turret.
---@return boolean
Vector3.IsUnderEnemyTurret = function(self) end

---Returns if vector3 is under ally turret.
---@return boolean
Vector3.IsUnderAllyTurret = function(self) end

---Returns if how many **valid**  allies is in vector3 range\(**include me**\).
---@param range number #Check range.
---@return number
Vector3.CountAlliesInRange = function(self, range) end

---Returns if how many **valid** ally minions is in vector3 range.
---@param range number #Check range.
---@return number
Vector3.CountAllyLaneMinionsInRange = function(self, range) end

---Returns if how many **valid** enemy **lane** minions is in vector3 range.
---@param range number #Check range.
---@return number
Vector3.CountEnemyLaneMinionsInRange = function(self, range) end

---Returns if how many **valid** enemies is in vector3 range.
---@param range number #Check range.
---@return number
Vector3.CountEnemiesInRange = function(self, range) end

---Returns if this position is not passable.
---@param actorTeam number #(integer) Actor team to check special air wall \(300 == ignore air wall\)
---@return boolean
Vector3.IsWall = function(self, actorTeam) end

---Returns if this position is not passable through both static and dynamic obstacles.
---@param teamFlag number #(integer) Use AIBaseClient::GetNavConditionFlags(). Use 0 to ignore air walls.
---@return boolean
Vector3.IsWallDynamic = function(self, teamFlag) end

---Returns if this position is grass.
---@return boolean
Vector3.IsGrass = function(self) end

---Returns if this position is water.
---@return boolean
Vector3.IsWater = function(self) end

---Returns if this position has certain CellFlag. Can be used to check position near grass for example.
---@param cellFlag CellFlag #
---@param radius number #
---@return boolean
Vector3.IsWallOfType = function(self, cellFlag, radius) end

---Returns collision position with a circle.
---
--[[```lua
-- Example: Check for Qiyana W if intersects water.
Game.localPlayer.position:GetCircleCollisionPosition(0,366,0):IsWater()
```]]
---@param innerRadius number #Inner radius
---@param outerRadius number #Outer radius
---@param teamFlag number #(integer) NavConditionFlag. Use 0 to ignore air walls.
---@return Vector3
Vector3.GetCircleCollisionPosition = function(self, innerRadius, outerRadius, teamFlag) end

