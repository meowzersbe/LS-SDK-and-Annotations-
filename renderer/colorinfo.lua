---Renderer.ColorInfo struct. Used by fancy shader drawings.
---
---**Note:** Part of Renderer namespace.
---**Danger:** This is deprecated and kept for backwards compatibility! Use [ColorData](colordata) instead, it offers way more.
---@deprecated
---@class ColorInfo
Renderer.ColorInfo = {}

---Wrapped ColorData constructor. Remains in SDK for backwards compatibility.
---@deprecated
---@param colFrom number #(D3DCOLOR) Main color
---@param colTo number #(D3DCOLOR) Secondary color - used in gradient
---@param gradType GradientType #Gradient type
---@return ColorData
ColorInfo.new = function(colFrom, colTo, gradType) end

---Wrapped ColorData constructor. Remains in SDK for backwards compatibility.
---@deprecated
---@param colFrom number #(D3DCOLOR) Main color
---@param colTo number #(D3DCOLOR) Secondary color - used in gradient
---@return ColorData
ColorInfo.new = function(colFrom, colTo) end

---Wrapped ColorData constructor. Remains in SDK for backwards compatibility.
---@deprecated
---@param col number #(D3DCOLOR) Main color
---@return ColorData
ColorInfo.new = function(col) end


-- Examples:

-- Example 1: Draw fancy shader circle around selected target.
local MyGlowingCircleHash = Game.fnvhash("Example_MyGlowingCircle") -- This must be unique hash per drawing. Use unique prefix.
local color = Renderer.ColorInfo.new(0xFFFFFFFF, 0xFF5555FF, Renderer.GradientType.Linear)
local radius = 100
Callback.Bind(CallbackType.OnDraw, function()
    local tar = Game.GetSelectedTarget()
    if tar and tar:IsValid() then
        Renderer.DrawEffectCircle(MyGlowingCircleHash, tar.position2D, radius, color, Renderer.EffectType.MagicalCircle)
    end
end)

