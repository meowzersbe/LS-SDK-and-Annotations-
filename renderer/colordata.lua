---Renderer.ColorData struct. Used by fancy shader drawings.
---
---**Note:** Part of Renderer namespace.
---@class ColorData
---@field from number #(D3DCOLOR) Main color
---@field to number #(D3DCOLOR) Secondary color - used in gradient
---@field gradientType GradientType #Gradient type
---@field gradientAngle number #(float) Gradient angle
---@field gradientFactor number #(float) Gradient factor
Renderer.ColorData = {}

---ColorData constructor from gradient type, two colors, gradient angle and gradient factor.
---@param gradientType GradientType #Gradient type
---@param from number #(D3DCOLOR) Main color
---@param to number #(D3DCOLOR) Secondary color - used in gradient
---@param gradientAngle? number #Gradient angle
---@param gradientFactor? number #Gradient factor
---@return ColorData
Renderer.ColorData = function(gradientType, from, to, gradientAngle, gradientFactor) end

---ColorData constructor from two colors with linear gradient.
---@param from number #(D3DCOLOR) Main color
---@param to number #(D3DCOLOR) Secondary color
---@return ColorData
Renderer.ColorData = function(from, to) end

---ColorData constructor from single solid color.
---@param from number #(D3DCOLOR) Main color
---@return ColorData
Renderer.ColorData = function(from) end

---Default ColorData constructor.
---@return ColorData
Renderer.ColorData = function() end
