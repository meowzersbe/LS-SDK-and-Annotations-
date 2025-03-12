---Description of DrawTextureOptions table
---
---**Note:** This structure is not exported to Lua. The draw functions using this as parameter are expecting Lua table containing certain properties as described on this page.
---@class DrawTextureOptions
---@field renderStage RenderStage #Which render stage this will be rendered at. See more at `RenderStage` page. <br/>Default for 2D texture: `RenderStage.HUD` <br/>Default for 3D texture: `RenderStage.World`
---@field isTranslucent boolean #Translucent drawings are using alpha blending and never write to depth buffer, but they can read from it. <br/>Translucent drawings are rendered after opaque ones. <br/>Default: `true`
---@field isUsingDepth boolean #When using depth, this drawing will appear immersive in the game world and will become occluded by walls, grass, champions, etc where applicable. <br/>Default for 2D texture: `false` <br/>Default for 3D texture: `true`
---@field isUsingHeightMap boolean #When using Height Map, this drawing's mesh vertices will be projected on the terrain. <br/>Default for 2D texture: `false` <br/>Default for 3D texture: `true`
---@field isCulling boolean #When culling (true), this drawing's mesh backface will be not rendered. When false - both frontface and backface will be rendered. <br/>This can be useful for translucent rotating drawings. For better performance please keep it enabled, unless you need the opposite. <br/>Default: `true`
---@field rotation Vector3 #Rotation Vector3 containing yaw, pitch and roll. <br/>Default: `Math.Vector3(0, 0, 0)`
---@field sortOrder number #A number used in sorting algorithm. This can be useful to change the order in which this drawings appears compared to others, both in 2D (UI) and 3D (World) rendering. <br/>Default: `10`. Most other drawings in `LS Core` use sort order between 0 and 2.
---@field is2D boolean #Represents whether this texture is used in 2D space or 3D space. <br/>Default for 2D texture: `true` <br/>Default for 3D texture: `false`
Renderer.DrawTextureOptions = {}
