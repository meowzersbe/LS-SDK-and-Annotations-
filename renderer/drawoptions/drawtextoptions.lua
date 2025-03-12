---Description of DrawTextOptions table
---
---**Note:** This structure is not exported to Lua. The draw functions using this as parameter are expecting Lua table containing certain properties as described on this page.
---@class DrawTextOptions
---@field renderStage RenderStage #Which render stage this will be rendered at. See more at `RenderStage` page. <br/>Default for 2D text: `RenderStage.HUD` <br/>Default for 3D text: `RenderStage.World`
---@field fontSize FontSize #Font size. <br/>Default: `FontSize.Medium`
---@field fontStyle FontStyle #Font style. <br/>Default: `FontStyle.Regular`
---@field scale number #Font scale. <br/>Default: `1.0`
---@field rotation number #Font rotation. <br/>Default: `0.0`
---@field offset Vector2 #Text offset. <br/>Default: `Math.Vector2(0, 0)`
---@field alignmentX TextAlignment #Horizontal text alignment. <br/>Default for 2D text: `TextAlignment.Left` <br/>Default for 3D text: `TextAlignment.Center`
---@field alignmentY TextAlignment #Vertical text alignment. <br/>Default for 2D text: `TextAlignment.Top` <br/>Default for 3D text: `TextAlignment.Center`
---@field displayType TextDisplayType #Text display orientation type. <br/>Default for 2D text: `TextDisplayType.Overlay` <br/>Default for 3D text: `TextDisplayType.Flat`
Renderer.DrawTextOptions = {}
