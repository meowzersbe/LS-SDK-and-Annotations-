---Renderer namespace with useful drawing functions intended for debugging and development.
---**Title:** Renderer - Dev / Debug
---
---**Caution:** Please do not overuse these in your final production. The functions described on this page are intended for debugging and development purposes.
---**Tip:** For optimal performance and better visual quality, please prefer using functions described in [Renderer](renderer-api) section.
---@class Renderer
Renderer = {}

---Get proper color value
---@param r number #Red 0-255
---@param g number #Green 0-255
---@param b number #Blue 0-255
---@param a number #Alpha 0-255
---@return number
Renderer.RGBA = function(r, g, b, a) end

---Draw basic circle in game world.
---@param position Vector2 #Center position.
---@param radius number #(integer) Radius
---@param sides number #(integer) Sides
---@param width number #(integer) Line width
---@param color number #(D3DCOLOR) Color
Renderer.DrawCircle3D = function(position, radius, sides, width, color) end

---Draw basic circle in game world.
---@param position Vector3 #Center position.
---@param radius number #(integer) Radius
---@param sides number #(integer) Sides
---@param width number #(integer) Line width
---@param color number #(D3DCOLOR) Color
Renderer.DrawCircle3D = function(position, radius, sides, width, color) end

---Draw vector poly path.
---@param vectorPoly Vector2[] #Points which make a path.
---@param width number #(float) Line width.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawVectorPoly = function(vectorPoly, width, color) end

---Draw vector poly path.
---@param vectorPoly Vector3[] #(std::vector<Vector3>) Points which make a path.
---@param width number #(float) Line width.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawVectorPoly = function(vectorPoly, width, color) end

---Draw cross in game world.
---
---**Tip:** Useful to see exact position of any unit in game.
---@param position Vector2 #World position.
---@param size? number #(float) Cross size. 100 by default.
---@param color? number #(D3DCOLOR) Line color. White by default.
Renderer.DrawCross = function(position, size, color) end

---Draw Clipper `Path64` polygon.
---@param path Path64 #
---@param width number #(float) Line width.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawPath = function(path, width, color) end

---Draw Clipper `Paths64` polygons.
---
--[[```lua
-- Example: Full DrawPaths example with Clipper.Union and Clipper.PointInPolygons
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
---@param paths Paths64 #
---@param width number #(float) Line width.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawPaths = function(paths, width, color) end

