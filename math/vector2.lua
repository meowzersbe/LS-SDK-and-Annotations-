---Vector2 class
---@class Vector2
---@field x number
---@field y number
Vector2 = {}

---Returns whether this vector is not (0, 0)
---@return boolean
Vector2.IsValid = function(self) end

---Returns a Vector3 \(x =x, y =0, z=y\).
---@return Vector3
Vector2.To3D = function(self) end

---Returns a Vector2 \(x =x, y =y\).
---@return Vector2
Vector2.To2D = function(self) end

---Returns a Vector2 \(x =x, y =y\).
---@return Vector2
Vector2.Copy = function(self) end

---Returns a game world position Vector3 \(ScreenToWorld\).
---@return Vector3
Vector2.Project = function(self) end

---Returns project on line AB.
---@param A Vector2 #Line  start.
---@param B Vector2 #Line  end.
---@return Vector2
Vector2.ProjectOnLine = function(self, A, B) end

---Returns project on line segment AB.
---@param A Vector2 #Line segment start.
---@param B Vector2 #Line segment end.
---@return Vector2
Vector2.ProjectOnLineSegment = function(self, A, B) end

---Returns if point's project is on line segment AB.
---@param A Vector2 #Line segment start.
---@param B Vector2 #Line segment end.
---@return boolean
Vector2.IsOnLineSegment = function(self, A, B) end

---Returns whether AB intersects CD.
---@param B Vector2 #
---@param C Vector2 #
---@param D Vector2 #
---@return boolean
Vector2.IsLineSegmentIntersection = function(self, B, C, D) end

---Returns intersection between AB and CD.
---@param B Vector2 #
---@param C Vector2 #
---@param D Vector2 #
---@return Vector2
Vector2.VectorIntersection = function(self, B, C, D) end

---Returns vector length.
---@return number
Vector2.Length = function(self) end

---Returns vector length **square**.
---@return number
Vector2.Length2 = function(self) end

---Returns distance from v to v2.
---@param v2 Vector2 #Point 2
---@return number
Vector2.Distance = function(self, v2) end

---Returns distance **square** from v to v2.
---@param v2 Vector2 #Point 2
---@return number
Vector2.Distance2 = function(self, v2) end

---Returns dot result.
---@param v2 Vector2 #Point 2
---@return number
Vector2.Dot = function(self, v2) end

---Returns cross result.
---@param v2 Vector2 #Point 2
---@return number
Vector2.Cross = function(self, v2) end

---Normalizes this vector
Vector2.Normalize = function(self) end

---Returns a normalized vector from this vector.
---@return Vector2
Vector2.Normalized = function(self) end

---Extends this vector towards given vector.
---@param v2 Vector2 #
---@param distance number #(float)
Vector2.Extend = function(self, v2, distance) end

---Returns extended vector towards given vector.
---@param v2 Vector2 #
---@param distance number #(float)
---@return Vector2
Vector2.Extended = function(self, v2, distance) end

---Shortens this vector towards given vector.
---@param v2 Vector2 #
---@param distance number #(float)
Vector2.Shorten = function(self, v2, distance) end

---Returns shortened vector towards given vector.
---@param v2 Vector2 #
---@param distance number #(float)
---@return Vector2
Vector2.Shortened = function(self, v2, distance) end

---Returns Linear interpolation. V1 + s \(V2-V1\)
---@param v2 Vector2 #Point 2
---@param time number #(float) Time.
---@return Vector2
Vector2.Lerp = function(self, v2, time) end

---Returns this vector angle.
---@return number
Vector2.Angle = function(self) end

---Returns this vector angle **degree**.
---@return number
Vector2.AngleDeg = function(self) end

---Returns angle between this and v2.
---@param v2 Vector2 #Point 2
---@return number
Vector2.AngleBetween = function(self, v2) end

---Returns angle **degree** between this and v2.
---@param v2 Vector2 #Point 2
---@return number
Vector2.AngleDegBetween = function(self, v2) end

---Returns vector rotated at a given **radian** angle.
---@param angle number #(float) Rotation angle.
---@return Vector2
Vector2.Rotate = function(self, angle) end

---Returns vector rotated at a given **degree** angle.
---@param angle number #(float) Rotation angle.
---@return Vector2
Vector2.RotateDeg = function(self, angle) end

---Returns two numbers x,y.
---@return number, number
Vector2.Unpack = function(self) end

---Returns NavGridCell from this position.
---@return NavGridCell
Vector2.ToCell = function(self) end

---Returns relative position in direction from v to v2 as Vector2.
---@param v2 Vector2 #Point 2
---@param distance number #(float) Distance to extended.
---@return Vector2
Vector2.RelativePos = function(self, v2, distance) end

---Randomizes vector a little.
---@return Vector2
Vector2.Randomize = function(self) end

---Returns normalized direction vector from v to v2.
---@param v2 Vector2 #Point 2
---@return Vector2
Vector2.Direction = function(self, v2) end

---Returns normal.
---@return Vector2
Vector2.Normal = function(self) end

---Returns whether this vector is within certain range of other given Vector2.
---@param v2 Vector2 #Point 2
---@param range number #(float)
---@return boolean
Vector2.IsInRange = function(self, v2, range) end

---Returns whether this vector is within certain range of other given Vector3.
---@param v2 Vector3 #Point 2
---@param range number #(float)
---@return boolean
Vector2.IsInRange = function(self, v2, range) end

---Returns distance from this to v2.
---@param v2 Vector3 #Point 2
---@return number
Vector2.DistanceToVec3 = function(self, v2) end

---Returns distance from this to line AB.
---@param A Vector3 #Line start.
---@param B Vector3 #Line end.
---@return number
Vector2.DistanceToLine = function(self, A, B) end

---Returns distance **square** from this to line AB.
---@param A Vector3 #Line start.
---@param B Vector3 #Line end.
---@return number
Vector2.DistanceToLine2 = function(self, A, B) end

---Returns if vector2 is under enemy turret.
---@return boolean
Vector2.IsUnderEnemyTurret = function(self) end

---Returns if vector2 is under ally turret.
---@return boolean
Vector2.IsUnderAllyTurret = function(self) end

---Returns if how many **valid**  allies is in vector2 range\(**include me**\).
---@param range number #Check range.
---@return number
Vector2.CountAlliesInRange = function(self, range) end

---Returns if how many **valid** ally minions is in vector2 range.
---@param range number #Check range.
---@return number
Vector2.CountAllyLaneMinionsInRange = function(self, range) end

---Returns if how many **valid** enemies is in vector2 range.
---@param range number #Check range.
---@return number
Vector2.CountEnemiesInRange = function(self, range) end

---Returns if this position is not passable through static obstacles.
---@param actorTeam number #(integer) Actor team to check special air wall \(300 == ignore air wall\).
---@return boolean
Vector2.IsWall = function(self, actorTeam) end

---Returns if this position is not passable through both static and dynamic obstacles.
---@param teamFlag number #(integer) Use AIBaseClient::GetNavConditionFlags()
---@return boolean
Vector2.IsWallDynamic = function(self, teamFlag) end

---Returns if this position is grass.
---@return boolean
Vector2.IsGrass = function(self) end

---Returns if this position is water.
---@return boolean
Vector2.IsWater = function(self) end

---Returns if this position has certain CellFlag. Can be used to check position near grass for example.
---@param cellFlag CellFlag #
---@param radius number #
---@return boolean
Vector2.IsWallOfType = function(self, cellFlag, radius) end

