---Math library.
---@class Math
Math = {}

---Returns if Line1 and Line2 have Intersection.
---@param a1 Vector2 #Line 1 start.
---@param a2 Vector2 #Line 1 end.
---@param b1 Vector2 #Line 2 start.
---@param b2 Vector2 #Line 2 end.
---@return boolean
Math.LineIntersection = function(a1, a2, b1, b2) end

---Returns if Line1 and Line2 have Intersection.
---@param a1 Vector2 #Segment 1 start.
---@param a2 Vector2 #Segment1 end.
---@param b1 Vector2 #Segment2 start.
---@param b2 Vector2 #Segment2 end.
---@return boolean
Math.LineSegmentIntersection = function(a1, a2, b1, b2) end

---Returns sqrt result.
---@param value number #(float) Number for sqrt.
---@return number
Math.FastSqrt = function(value) end

---Returns Quaternion Rotation Vector4.
---@param yaw number #(float) Yaw
---@param pitch number #(float) Pitch
---@param roll number #(float) Angle
---@return Vector4
Math.QuaternionRotation = function(yaw, pitch, roll) end

---Returns Vector4.
---@param x number #(float) x
---@param y number #(float) y
---@param z number #(float) z
---@param w number #(float) w
---@return Vector4
Math.Vector4 = function(x, y, z, w) end

---Returns Vector3.
---@param x number #(float) x
---@param y number #(float) y
---@param z number #(float) z
---@return Vector3
Math.Vector3 = function(x, y, z) end

---Returns Vector2.
---@param x number #(float) x
---@param y number #(float) y
---@return Vector2
Math.Vector2 = function(x, y) end

---Returns the result of the Catmull-Rom interpolation.
---@param a Vector2 #a
---@param b Vector2 #b
---@param c Vector2 #c
---@param d Vector2 #d
---@param t number #(float) Weighting factor.
---@return Vector2
Math.CatmullRom = function(a, b, c, d, t) end

---Returns angle between ba and bc.
---@param a Vector2 #PA
---@param b Vector2 #PB
---@param c Vector2 #PC
---@return number
Math.GetAngle = function(a, b, c) end

---Returns angle degree between ba and bc \(0-180\).
---@param a Vector2 #PA
---@param b Vector2 #PB
---@param c Vector2 #PC
---@return number
Math.GetAngleDeg = function(a, b, c) end

---Returns angle degree between ba and bc \(-180-180\).
---@param a Vector2 #PA
---@param b Vector2 #PB
---@param c Vector2 #PC
---@return number
Math.GetFullAngleDeg = function(a, b, c) end

---Returns true if line segment 1 and line segment2 has intersection and intersection point\(if false ,defalut return point a\).
---@param a Vector2 #Line 1 start.
---@param b Vector2 #Line 1 end.
---@param c Vector2 #Line 2 start
---@param d Vector2 #Line 2 end.
---@return boolean, Vector2
Math.LineSegmentIntersection = function(a, b, c, d) end

---Returns two Intersection points if exist or else reutrns nil.
---@param a Vector2 #Line start.
---@param b Vector2 #Line end.
---@param c Vector2 #Center.
---@param radius number #Circle radius.
---@param onlySegment boolean #Only check ab as line segment.
---@return [Vector2], [Vector2]
Math.CircleLineIntersection = function(a, b, c, radius, onlySegment) end

---Returns circle points table.
---@param center Vector2 #Center.
---@param radius number #Circle radius.
---@param quality number #Circle sides.
---@return Vector2[]
Math.BuildCircle = function(center, radius, quality) end

---Returns safe circle points.
---@param center Vector2 #Center position.
---@param radius number #Circle radius.
---@param sides number #Circle sides.
---@param bSafeOffset boolean #Apply safe offset.
---@return Vector2[] #(std::vector<Vector2>)
Math.BuildSafeCircle = function(center, radius, sides, bSafeOffset) end

---Convert degrees to radians
---@param degrees number #(float)
---@return number #(float)
Math.Deg2Rad = function(degrees) end

---Convert radians to degrees
---@param radians number #(float)
---@return number #(float)
Math.Rad2Deg = function(radians) end

---Convert Vector2 to D3DXVECTOR2
---@param vec Vector2 #
---@return D3DXVECTOR2
Math.ToDX2D = function(vec) end

---Convert Vector3 to D3DXVECTOR2
---@param vec Vector3 #
---@return D3DXVECTOR2
Math.ToDX2D = function(vec) end

---Convert Vector3 to D3DXVECTOR3
---@param vec Vector3 #
---@return D3DXVECTOR3
Math.ToDX3D = function(vec) end

---Returns direction vector from orientation matrix (taken from given EffectEmitter).
---@param obj EffectEmitter #
---@return Vector2
Math.GetDirectionFromOrientation = function(obj) end

---Returns direction vector from orientation matrix.
---@param matrix _D3DMATRIX #
---@return Vector2
Math.GetDirectionFromOrientation = function(matrix) end

---Performs reverse linear interpolation and returns float `time` value.
---@param A Vector2 # Start position
---@param B Vector2 # End position
---@param C Vector2 # Result position from normal Lerp/Extension
---@return number #(float)
Math.InverseLerp = function(A, B, C) end

---Returns whether AB and CD are collinear.
---@param A Vector2 #
---@param B Vector2 #
---@param C Vector2 #
---@param D Vector2 #
---@return boolean
Math.IsCollinearLines = function(A, B, C, D) end

---Returns whether AB and CD are collinear.
---@param AB LineSegment #
---@param CD LineSegment #
---@return boolean
Math.IsCollinearLines = function(AB, CD) end

---Returns whether AB and CD are collinear.
---@param AB Line #
---@param CD Line #
---@return boolean
Math.IsCollinearLines = function(AB, CD) end

---Returns whether given points form a straight line or not (within given deviation).
---@param points Vector2[] #Given positions to check.
---@param deviation number #(float) Deviation. The closer to 0 the stricter this check is.
---@return boolean
Math.IsStraightLine = function(points, deviation) end

---Returns whether given points form a straight line or not (within given deviation).
---@param points Vector3[] #Given positions to check.
---@param deviation number #(float) Deviation. The closer to 0 the stricter this check is.
---@return boolean
Math.IsStraightLine = function(points, deviation) end

---Returns calculated centroid from given positions.
---@param points Vector2[] #Lua table of given Vector2 positions.
---@return Vector2
Math.GetCentroid = function(points) end

---Returns calculated centroid from given positions.
---@param points Vector3[] #(std::vector<Vector3>) Given positions.
---@return Vector2
Math.GetCentroid = function(points) end

---Returns enemy centroid from enemies at given position within given range, and returns affected enemy count.
---@param position Vector2 #Given position.
---@param range number #(float) Given range.
---@return Vector2, number
Math.GetEnemyCentroid = function(position, range) end

---Get Minimum Enclosing Circle (position and radius) from given Vector2 positions.
---@param positions Vector2[] #Lua table of given Vector2 positions.
---@return Vector2, float
Math.GetMEC = function(positions) end

---Get Minimum Enclosing Circle (position and radius) from given Vector3 positions.
---@param positions Vector3[] #(std::vector<Vector3>) Given positions.
---@return Vector2, float
Math.GetMEC = function(positions) end

