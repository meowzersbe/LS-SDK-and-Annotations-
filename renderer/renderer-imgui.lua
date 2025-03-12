---Renderer namespace with useful drawing functions utilizing ImGui.
---**Title:** Renderer - ImGui
---
---**Caution:** Most `ImGui` drawing functions should be used in `OnImguiDraw` callback. Some functions can be used in `OnDraw` too.
---**Tip:** Besides raw DrawList functions, we also exported normal ImGui API, which is not documented here. <br/>You can read more about it here: [sol2_ImGui_Bindings](https://github.com/sigmareaver/sol2_ImGui_Bindings). <br/>Don't forget to check example at the bottom of the page.

---@class Renderer
Renderer = {}

---Get proper color value
---@param r number #Red 0-255
---@param g number #Green 0-255
---@param b number #Blue 0-255
---@param a number #Alpha 0-255
---@return number
Renderer.RGBA = function(r, g, b, a) end

---Draw a circle on minimap from world coordinate and radius in game units.
---
--[[```lua
-- Example: Basic DrawMinimapCircle example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    Renderer.DrawMinimapCircle(Game.localPlayer.position, Renderer.RGBA(255, 255, 255, 255), 2000, 1)
end)
```]]
---@param worldPosition Vector3 #Center in world coordinates.
---@param color number #(D3DCOLOR) Color.
---@param radius number #Radius.
---@param thickness number #Line thickness.
Renderer.DrawMinimapCircle = function(worldPosition, color, radius, thickness) end

---Draw damage indicator on specific target's healthbar.
---
--[[```lua
-- Example: Basic DamageIndicatorRendering example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    for i, entity in ObjectManager.allyHeroes:pairs() do
        if entity ~= nil then
            Renderer.DamageIndicatorRendering(entity, 600, DamageType.Physical, 0, false)
        end
    end

    for i, entity in ObjectManager.enemyHeroes:pairs() do
        if entity ~= nil then
            Renderer.DamageIndicatorRendering(entity, 600, DamageType.Physical, 0, false)
        end
    end
end)
```]]
---@param target AIBaseClient #Target.
---@param damage number #Damage amount.
---@param damageType DamageType #Damage type.
---@param forcedColor number #(D3DCOLOR) Color.
---@param isDrawHeal boolean #True if it's heal instead of damage.
Renderer.DamageIndicatorRendering = function(target, damage, damageType, forcedColor, isDrawHeal) end

---Draw basic `ImGui` text. This is `ImGui` function.
---
---**Caution:** While this function is okay to use, we recommend to use [`DrawTextEx`](renderer-api#drawtextex) instead in your final production code.
---@param text string #Text you want to display.
---@param position Vector2 #On-screen position for your text. Starts from top-left corner.
---@param size? number #(float) Font size. 12 by default.
---@param color? number #(D3DCOLOR) Font color. White by default.
Renderer.DrawText = function(text, position, size, color) end

---Draw basic `ImGui` text in game world. This is `ImGui` function.
---
---**Caution:** While this function is okay to use, we recommend to use [`DrawTextEx`](renderer-api#drawtextex) instead in your final production code.
---@param text string #Text you want to display.
---@param position Vector3 #World position.
---@param offset? Vector2 #On-screen offset. Vector2(0,0) by default.
---@param size? number #(float) Font size. 12 by default.
---@param color? number #(D3DCOLOR) Font color. White by default.
Renderer.DrawWorldText = function(text, position, offset, size, color) end

---Returns calculated text width and height. This is `ImGui` function.
---
---**Caution:** This is useful only for `ImGui` [`DrawText`](#drawtext) and [`DrawWorldText`](#drawworldtext) functions. This has no use with [`DrawTextEx`](renderer-api#drawtextex) function.
--[[```lua
-- Example: Draw a centered text indicator under player, showing whether he is inside enemy turret range or not.
local fontSize = 16
Callback.Bind(CallbackType.OnImguiDraw, function()
    local text = TurretTracker.IsPlayerInsideTurret() and "Inside" or "Outside"
    local tX, tY = Renderer.CalcTextSize(text, fontSize)
    Renderer.DrawWorldText(text, Game.localPlayer.position, Math.Vector2(-tX/2, 0), fontSize)
end)
```]]
---@param text string #Text string.
---@param fontSize number #(float) Text font size.
---@return number, number
Renderer.CalcTextSize = function(text, fontSize) end

---Draw 2D Line.
---@param p1 Vector2 #Start position.
---@param p2 Vector2 #End position.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
Renderer.DrawLine2D = function(p1, p2, color, thickness) end

---Draw 3D Line.
---@param p1 Vector3 #Start position.
---@param p2 Vector3 #End position.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
Renderer.DrawLine3D = function(p1, p2, color, thickness) end

---Draw 3D Line.
---@param p1 Vector2 #Start position.
---@param p2 Vector2 #End position.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
Renderer.DrawLine3D = function(p1, p2, color, thickness) end

---Draw 2D Rect.
---@param min Vector2 #Top-left corner.
---@param max Vector2 #Bottom-right corner.
---@param color number #(D3DCOLOR) Color.
---@param rounding number #(float) Corner rounding.
---@param flags ImDrawFlags #ImGui Draw Flags.
---@param thickness number #(float) Line thickness.
Renderer.DrawRect = function(min, max, color, rounding, flags, thickness) end

---Draw 2D Filled Rect.
---@param min Vector2 #Top-left corner.
---@param max Vector2 #Bottom-right corner.
---@param color number #(D3DCOLOR) Color.
---@param rounding number #(float) Corner rounding.
---@param flags ImDrawFlags #ImGui Draw Flags.
Renderer.DrawRectFilled = function(min, max, color, rounding, flags) end

---Draw 2D Filled Rect MultiColor.
---@param min Vector2 #Top-left corner.
---@param max Vector2 #Bottom-right corner.
---@param colorTopLeft number #(D3DCOLOR) Top Left Color.
---@param colorTopRight number #(D3DCOLOR) Top Right Color.
---@param colorBotRight number #(D3DCOLOR) Bot Right Color.
---@param colorBotLeft number #(D3DCOLOR) Bot Left Color.
Renderer.DrawRectFilledMultiColor = function(min, max, colorTopLeft, colorTopRight, colorBotRight, colorBotLeft) end

---Draw 2D Quad.
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param p4 Vector2 #Point 4.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
Renderer.DrawQuad = function(p1, p2, p3, p4, color, thickness) end

---Draw 2D Filled Quad.
---
---**Caution:** Filled shapes must always use clockwise winding order. The anti-aliasing fringe depends on it. Counter-clockwise shapes will have "inward" anti-aliasing.
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param p4 Vector2 #Point 4.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawQuadFilled = function(p1, p2, p3, p4, color) end

---Draw 2D Triangle.
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
Renderer.DrawTriangle = function(p1, p2, p3, color, thickness) end

---Draw 2D Filled Triangle.
---
---**Caution:** Filled shapes must always use clockwise winding order. The anti-aliasing fringe depends on it. Counter-clockwise shapes will have "inward" anti-aliasing.
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param color number #(D3DCOLOR) Line color.
Renderer.DrawTriangleFilled = function(p1, p2, p3, color) end

---Draw 2D Circle.
---@param center Vector2 #Center position.
---@param radius number #Radius.
---@param color number #(D3DCOLOR) Color.
---@param numSegments number #(integer) Number of segments.
---@param thickness number #(float) Line thickness. Use `0` to automatically calculate tessellation (preferred).
Renderer.DrawCircle2D = function(center, radius, color, numSegments, thickness) end

---Draw 2D Filled Circle.
---@param center Vector2 #Center position.
---@param radius number #Radius.
---@param color number #(D3DCOLOR) Color.
---@param numSegments number #(integer) Number of segments. Use `0` to automatically calculate tessellation (preferred).
Renderer.DrawCircleFilled2D = function(center, radius, color, numSegments) end

---Draw 2D Ngon. It's similar to DrawCircle2D, but will have guaranteed specific number of sides.
---@param center Vector2 #Center position.
---@param radius number #Radius.
---@param color number #(D3DCOLOR) Color.
---@param numSegments number #(integer) Number of segments.
---@param thickness number #(float) Line thickness.
Renderer.DrawNgon = function(center, radius, color, numSegments, thickness) end

---Draw 2D Filled Ngon. It's similar to DrawCircleFilled2D, but will have guaranteed specific number of sides.
---@param center Vector2 #Center position.
---@param radius number #Radius.
---@param color number #(D3DCOLOR) Color.
---@param numSegments number #(integer) Number of segments.
Renderer.DrawNgonFilled = function(center, radius, color, numSegments) end

---Draw 2D Poly Line.
---
--[[```lua
-- Example: Basic poly line example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    Renderer.DrawPolyline({
        Math.Vector2(300, 300),
        Math.Vector2(350, 350),
        Math.Vector2(400, 320),
        Math.Vector2(450, 370),
        Math.Vector2(500, 360),
        Math.Vector2(550, 300),
        Math.Vector2(600, 330),
        Math.Vector2(650, 280),
        Math.Vector2(700, 240),
        Math.Vector2(750, 320),
        Math.Vector2(800, 300),
    }, 11, 0xFFFF0000, Renderer.ImDrawFlags.None, 15.0)
end)
```]]
---@param points Vector2[] #Points to form a poly line.
---@param numPoints number #(integer) Number of points.
---@param color number #(D3DCOLOR) Color.
---@param flags ImDrawFlags #ImGui Draw Flags.
---@param thickness number #(float) Line thickness.
Renderer.DrawPolyLine = function(points, numPoints, color, flags, thickness) end

---Draw 2D Convex Filled Poly.
---
---**Caution:** Filled shapes must always use clockwise winding order. The anti-aliasing fringe depends on it. Counter-clockwise shapes will have "inward" anti-aliasing.
--[[```lua
-- Example: Basic convex filled poly example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    Renderer.DrawConvexPolyFilled({
        Math.Vector2(500, 350),
        Math.Vector2(600, 340),
        Math.Vector2(580, 450),
        Math.Vector2(480, 430),
    }, 4, 0x99FFFF00)
end)
```]]
---@param points Vector2[] #Points to form a poly.
---@param numPoints number #(integer) Number of points.
---@param color number #(D3DCOLOR) Color.
Renderer.DrawConvexPolyFilled = function(points, numPoints, color) end

---Draw 2D Bezier Cubic.
---
--[[```lua
-- Example: Basic bezier cubic example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    Renderer.DrawBezierCubic(Math.Vector2(300, 400), Math.Vector2(400, 300), Math.Vector2(700, 500), Math.Vector2(800, 400), 0xFF9999FF, 10.0, 0)
    Renderer.DrawBezierCubic(Math.Vector2(300, 400), Math.Vector2(400, 300), Math.Vector2(700, 500), Math.Vector2(800, 400), 0xFF000000, 1.0, 6)
end)
```]]
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param p4 Vector2 #Point 4.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
---@param numSegments number #(integer) Number of segments. Use `0` to automatically calculate tessellation (preferred).
Renderer.DrawBezierCubic = function(p1, p2, p3, p4, color, thickness, numSegments) end

---Draw 2D Bezier Quadratic.
---
--[[```lua
-- Example: Basic bezier quadratic example.
Callback.Bind(CallbackType.OnImguiDraw, function()
    Renderer.DrawBezierQuadratic(Math.Vector2(300, 420), Math.Vector2(550, 520), Math.Vector2(800, 420), 0xFFFF9999, 3.0, 0)
end)
```]]
---@param p1 Vector2 #Point 1.
---@param p2 Vector2 #Point 2.
---@param p3 Vector2 #Point 3.
---@param color number #(D3DCOLOR) Line color.
---@param thickness number #(float) Line thickness.
---@param numSegments number #(integer) Number of segments. Use `0` to automatically calculate tessellation (preferred).
Renderer.DrawBezierQuadratic = function(p1, p2, p3, color, thickness, numSegments) end

---Load image (sprite) so it can be used with ImGui functions such as [`DrawImage`](#drawimage). Returns unique image handle.
---
---**Caution:** This is different from [`AddTexture`](renderer-api#addtexture). <br/>Unless you want to draw images specifically with ImGui - we recommend using [`AddTexture`](renderer-api#addtexture) and [`DrawTexture`](renderer-api#drawtexture).
---**Danger:** Unlike [`AddTexture`](renderer-api#addtexture), you must dispose of all image resources loaded with this function by using [`ReleaseImage`](#releaseimage) in `OnUnload` callback. <br/><br/>Also make sure to use double slash `\\` instead of `/`. <br/>Although `/` will work during your development, it will not work in production script when you upload it to our server.
---@param filePath string #Relative path to your image. Make sure to use double slash `\\` instead of `/`.
---@return number #(handle)
Renderer.LoadImageFromFile = function(filePath) end

---Release image resource. Make sure to call this inside `OnUnload` callback for all your images.
---@param imageHandle number #(handle)
Renderer.ReleaseImage = function(imageHandle) end

---Draw 2D image (sprite) with ImGui.
---
--[[```lua
-- Example: Basic DrawImage example.
local imageHandle = Renderer.LoadImageFromFile("assets\\Default_Texture_A.png") -- Load image
Callback.Bind(CallbackType.OnImguiDraw, function()
    if imageHandle then
        Renderer.DrawImage(imageHandle, Math.Vector2(100, 50), Math.Vector2(600, 100))
    end
end)
Callback.Bind(CallbackType.OnUnload, function()
    Renderer.ReleaseImage(imageHandle) -- IMPORTANT: Release it when disposing
end)
```]]
---@param imageHandle number #(integer) Unique ImGui image handle returned from `LoadImageFromFile`.
---@param position Vector2 #Draw position.
---@param size Vector2 #Image size.
---@param uv0? Vector2 #Optional UV0.
---@param uv1? Vector2 #Optional UV1.
---@param tintColor? number #(D3DCOLOR) Optional tintColor.
Renderer.DrawImage = function(imageHandle, position, size, uv0, uv1, tintColor) end

---Draw 2D image (sprite) inside ImGui window.
---**Caution:** Must be used inside ImGui window, so basically between `ImGui.Begin` and `ImGui.End` calls.
---@param imageHandle number #(integer) Unique ImGui image handle returned from `LoadImageFromFile`.
---@param size Vector2 #Image size.
---@param uv0? Vector2 #Optional UV0.
---@param uv1? Vector2 #Optional UV1.
---@param tintColor? number #(D3DCOLOR) Optional tint color.
---@param borderColor? number #(D3DCOLOR) Optional border color.
Renderer.DrawImageInWindow = function(imageHandle, size, uv0, uv1, tintColor, borderColor) end


-- Examples:

-- Example 1: Basic example of using ImGui to build some simple UI. This can be handy for debugging and devtools, but we do not recommend using it for custom UIs in your final production code.
local mainWindowOpen = true
local myCheckBox = true
Callback.Bind(CallbackType.OnImguiDraw, function()
    ImGui.SetNextWindowSize(500, 500)

    mainWindowOpen = ImGui.Begin("My Window", mainWindowOpen, ImGuiWindowFlags.NoResize)

    ImGui.Text("Well hello there, General Kenobi")
    ImGui.TextColored(1, 1, 0, 1, "Well hello there, General Kenobi")
    ImGui.TextDisabled("List:")
    ImGui.BulletText("One")
    ImGui.BulletText("Two")

    ImGui.Text("Buttons:")
    ImGui.Button("50x50", 50, 50) ImGui.SameLine() ImGui.SmallButton("Small Button")
    myCheckBox = ImGui.Checkbox("My Checkbox", myCheckBox)

    ImGui.Text("Progress bar:")
    ImGui.ProgressBar(0.4, 400, 25, "40%")
    
    ImGui.End()
end)

