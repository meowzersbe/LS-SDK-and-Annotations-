---Description of DrawCirclePulse2Options table
---
---**Note:** This structure is not exported to Lua. The draw functions using this as parameter are expecting Lua table containing certain properties as described on this page.
---@class DrawCirclePulse2Options
---@field renderStage RenderStage #Which render stage this will be rendered at. See more at `RenderStage` page. <br/>Default: `RenderStage.World`
---@field isTranslucent boolean #Translucent drawings are using alpha blending and never write to depth buffer, but they can read from it. <br/>Translucent drawings are rendered after opaque ones. <br/>Default: `true`
---@field isUsingDepth boolean #When using depth, this drawing will appear immersive in the game world and will become occluded by walls, grass, champions, etc where applicable. <br/>Default: `true`
---@field isUsingHeightMap boolean #When using Height Map, this drawing's mesh vertices will be projected on the terrain. <br/>Default: `true`
---@field isCulling boolean #When culling (true), this drawing's mesh backface will be not rendered. When false - both frontface and backface will be rendered. <br/>This can be useful for translucent rotating drawings. For better performance please keep it enabled, unless you need the opposite. <br/>Default: `true`
---@field rotation Vector3 #Rotation Vector3 containing yaw, pitch and roll. <br/>Default: `Math.Vector3(0, 0, 0)`
---@field sortOrder number #A number used in sorting algorithm. This can be useful to change the order in which this drawings appears compared to others, both in 2D (UI) and 3D (World) rendering. <br/>Default: `10`. Most other drawings in `LS Core` use sort order between 0 and 2.
---@field speed number #(float) Pulse animation speed. <br/>Default: `2.5`
---@field rippleFactor number #(float) Pulse ripple factor used in the shader. <br/>Default: `2.0`
---@field centerFactor number #(float) Pulse center factor used in the shader. <br/>Default: `8.0`
Renderer.DrawCirclePulse2Options = {}
