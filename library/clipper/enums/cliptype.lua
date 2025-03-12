---Clipper.ClipType
---**Link:** [Official Documentation](https://angusj.com/clipper2/Docs/Units/Clipper/Types/ClipType.htm)
---@class ClipType
---@field None number #None.
---@field Intersection number #AND (intersection) - regions covered by both subject and clip polygons.
---@field Union number #OR (union) - regions covered by subject or clip polygons, or both polygons.
---@field Difference number #NOT (difference) - regions covered by subject, but not clip polygons.
---@field Xor number #XOR (exclusive or) - regions covered by subject or clip polygons, but not both.
Clipper.ClipType = {}

