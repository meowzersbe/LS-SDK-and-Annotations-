---Clipper.EndType
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/EndType.htm)
---
---**Note:** The EndType enumerator is only needed when offsetting (inflating/shrinking). It isn't needed for polygon clipping.
---@class EndType
---@field Polygon number #The path is treated as a polygon.
---@field Joined number #Ends are joined and the path treated as a polyline.
---@field Butt number #Ends are squared off without any extension.
---@field Square number #Ends extend the offset amount while being squared off.
---@field Round number #Ends extend the offset amount while being rounded off.
Clipper.EndType = {}

