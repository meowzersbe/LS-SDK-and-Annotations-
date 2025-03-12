---Renderer namespace with useful drawing functions ready for production.
---
---**Tip:** For optimal performance and better visual quality, please prefer using functions described on this page in your final production.
---@class Renderer
Renderer = {}

---Get proper color value
---@param r number #Red 0-255
---@param g number #Green 0-255
---@param b number #Blue 0-255
---@param a number #Alpha 0-255
---@return number
Renderer.RGBA = function(r, g, b, a) end

---Get current game resolution
---@return Vector2
Renderer.GetResolution = function() end

---Draw fancy glow circle using shaders.
---
--[[```lua
-- Example: Draw fancy animated sphere. This is overkill example of what can be achieved with these functions.
Callback.Bind(CallbackType.OnDraw, function()
    for i = 1, 10, 1 do
        local tbl = {
            renderStage = Renderer.RenderStage.HUD,     -- HUD instead of World, because we want to draw on top of grass, champions and structures.
            isUsingDepth = false,                       -- This part of sphere is barely visible and blurred, we disable depth here to create effect of visibility when sphere rings go behind walls.
            isUsingHeightMap = false,                   -- No need to project on the ground.
            isCulling = false,                          -- False, because we need to render from both sides due to 3D rotation animation.
            rotation = Math.Vector3((Game.GetTime() + i * 0.5 * 1) % (math.pi*2), (Game.GetTime() + i * 0.5 * 1) % (math.pi*2), (Game.GetTime() + i * 0.5 * 1) % (math.pi*2)), -- Animated 3D rotation
            blurIn = 30,
            blurOut = 30,
        }
        Renderer.DrawCircleGlow(Game.fnvhash("ExampleB_CircleGlowA" .. i), Game.localPlayer.position, 200 + math.sin(Game.GetTime()) * (50 + i*10) + (50 + i*10), Renderer.ColorData(Renderer.GradientType.Linear, 0x110000FF, 0x11FF0000, ((Game.GetTime()*2 + i) % (math.pi*2)) * 2), tbl)
    end
    for i = 1, 10, 1 do
        local tbl = {
            renderStage = Renderer.RenderStage.HUD,
            isUsingDepth = true,                        -- This is the main part of sphere, it's crisp, but we want it to be hidden inside walls.
            isUsingHeightMap = false,
            isCulling = false,
            rotation = Math.Vector3((Game.GetTime() + i * 0.5 * 1) % (math.pi*2), (Game.GetTime() + i * 0.5 * 1) % (math.pi*2), (Game.GetTime() + i * 0.5 * 1) % (math.pi*2)),
        }
        Renderer.DrawCircleGlow(Game.fnvhash("ExampleB_CircleGlowB" .. i), Game.localPlayer.position, 200 + math.sin(Game.GetTime()) * (50 + i*10) + (50 + i*10), Renderer.ColorData(Renderer.GradientType.Linear, 0x77FFFFFF, 0x77FF0000, ((Game.GetTime()*2 + i) % (math.pi*2)) * 2), tbl)
    end
end)
```]]
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? DrawCircleGlowOptions #Drawing options. For default values see its page.
Renderer.DrawCircleGlow = function(hash, position, radius, colorData, options) end

---Draw fancy magic circle using shaders.
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? BaseMeshDrawOptions #Drawing options. For default values see its page.
Renderer.DrawCircleMagical = function(hash, position, radius, colorData, options) end

---Draw fancy pulse circle using shaders.
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? DrawCirclePulseOptions #Drawing options. For default values see its page.
Renderer.DrawCirclePulse = function(hash, position, radius, colorData, options) end

---Draw alternative fancy pulse circle using shaders.
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? DrawCirclePulse2Options #Drawing options. For default values see its page.
Renderer.DrawCirclePulse2 = function(hash, position, radius, colorData, options) end

---Draw fancy pulse circle using shaders.
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? DrawCircleShineOptions #Drawing options. For default values see its page.
Renderer.DrawCircleShine = function(hash, position, radius, colorData, options) end

---Draw fancy pulse circle using shaders.
---@param hash number #(integer) Unique fnv hash.
---@param position Vector3 #Position.
---@param radius number #Radius.
---@param colorData ColorData #ColorData struct.
---@param options? BaseMeshDrawOptions #Drawing options. For default values see its page.
Renderer.DrawCircleTarget = function(hash, position, radius, colorData, options) end

---Draw fancy shader circle.
---
---**Caution:** It is important to use unique `fnvhash` for this. Please use unique prefix when generating this hash.
---**Danger:** This function is deprecated and it's kept for backwards compatibility. Use other fancy drawing functions, such as `DrawCircleX`, `DrawTextEx`, `DrawTexture`, etc.
--[[```lua
-- Example: Draw fancy shader circle around selected target.
local MyGlowingCircleHash = Game.fnvhash("Example_MyGlowingCircle") -- This must be unique hash per drawing. Use unique prefix.
local color = Renderer.ColorInfo.new(0xFFFFFFFF, 0xFF5555FF, Renderer.GradientType.Linear)
local radius = 100
Callback.Bind(CallbackType.OnDraw, function()
    local tar = Game.GetSelectedTarget()
    if tar and tar:IsValid() then
        Renderer.DrawEffectCircle(MyGlowingCircleHash, tar.position2D, radius, color, Renderer.EffectType.MagicalCircle)
    end
end)
```]]
---@deprecated
---@param hash number #(integer) Unique fnv hash.
---@param position Vector2 #Position.
---@param radius number #Radius.
---@param colorInfo? ColorInfo #ColorInfo struct. White solid by default.
---@param effectType? EffectType #Shader effect type. GlowingCircle by default.
Renderer.DrawEffectCircle = function(hash, position, radius, colorInfo, effectType) end

---Draw text using our Renderer in 2D space (UI, HUD).
---@param hash number #(integer) Unique fnv hash.
---@param text string #Text to be displayed.
---@param position Vector2 #Position.
---@param colorData ColorData #ColorData struct.
---@param options? DrawTextOptions #Drawing options. For default values see its page.
Renderer.DrawTextEx = function(hash, text, position, colorData, options) end

---Draw text using our Renderer in 3D space (Game World).
---@param hash number #(integer) Unique fnv hash.
---@param text string #Text to be displayed.
---@param position Vector3 #Position.
---@param colorData ColorData #ColorData struct.
---@param options? DrawTextOptions #Drawing options. For default values see its page.
Renderer.DrawTextEx = function(hash, text, position, colorData, options) end

---Draw a texture (sprite) in 2D space (UI, HUD).
---
--[[```lua
-- Example: Draw same sprite several times in specific order in 2D space.
local texHandle = Renderer.AddTexture("example.png") -- Make sure you have example.png in your script folder
Callback.Bind(CallbackType.OnDraw, function()
    Renderer.DrawTexture(Game.fnvhash("DrawTexture2D_1"), texHandle, Math.Vector2(300, 300), Math.Vector2(200, 200),Renderer.ColorData(Renderer.GradientType.Linear, 0xFF00FFFF, 0xFFFF0000, (Game.GetTime()*2 % (math.pi*2)) * 2), {
        sortOrder = 0
    })
    Renderer.DrawTexture(Game.fnvhash("DrawTexture2D_2"), texHandle, Math.Vector2(310, 310), Math.Vector2(200, 200), Renderer.ColorData(Renderer.GradientType.Linear, 0xFF0000FF, 0xFFFF0000, (Game.GetTime()*2 % (math.pi*2)) * 2), {
        sortOrder = 1
    })
    Renderer.DrawTexture(Game.fnvhash("DrawTexture2D_3"), texHandle, Math.Vector2(320, 320), Math.Vector2(200, 200), Renderer.ColorData(Renderer.GradientType.Linear, 0xFFFF00FF, 0xFFFF0000, (Game.GetTime()*2 % (math.pi*2)) * 2), {
        sortOrder = 2
    })
end)
```]]
---@param hash number #(integer) Unique fnv hash.
---@param textureHandle number #Texture handle.
---@param position Vector2 #Position.
---@param size Vector2 #Size.
---@param colorData ColorData #ColorData struct.
---@param options? DrawTextureOptions #Drawing options. For default values see its page.
Renderer.DrawTexture = function(hash, textureHandle, position, size, colorData, options) end

---Draw a texture (sprite) in 3D space (Game World).
---
--[[```lua
-- Example: Draw sprite under our hero with animated gradient tint.
local texHandle = Renderer.AddTexture("example.png") -- Make sure you have example.png in your script folder
Callback.Bind(CallbackType.OnDraw, function()
    Renderer.DrawTexture(
        Game.fnvhash("DrawTexture3D"),
        texHandle,
        Math.Vector3(Game.localPlayer.position.X, Game.localPlayer.position.Y + 100, Game.localPlayer.position.Z),
        Math.Vector2(400, 400),
        Renderer.ColorData(Renderer.GradientType.Linear, 0xFF0000FF, 0xFFFF0000, (Game.GetTime()*2 % (math.pi*2)) * 2)
    )
end)
```]]
---@param hash number #(integer) Unique fnv hash.
---@param textureHandle number #Texture handle.
---@param position Vector3 #Position.
---@param size Vector2 #Size.
---@param colorData ColorData #ColorData struct.
---@param options? DrawTextureOptions #Drawing options. For default values see its page.
Renderer.DrawTexture = function(hash, textureHandle, position, size, colorData, options) end

---Adds texture to DrawManager and returns unique texture handle.
---**Danger:** Make sure to use double slash `\\` instead of `/`. <br/>Although `/` will work during your development, it will not work in production script when you upload it to our server.
---@param filePath string #(path) Relative path from your module.lua to the texture. Make sure to use double slash `\\` instead of `/`.
---@return number #(handle) Unique texture handle.
Renderer.AddTexture = function(filePath) end

