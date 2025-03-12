---Base MenuComponent class.
---@class MenuComponent
---@field name string
---@field displayName string
MenuComponent = {}

---Casts this component to CheckBox
---@return CheckBox
MenuComponent.CastToCheckBox = function(self) end

---Casts this component to ColorPicker
---@return ColorPicker
MenuComponent.CastToColorPicker = function(self) end

---Casts this component to List
---@return List
MenuComponent.CastToList = function(self) end

---Casts this component to Slider
---@return Slider
MenuComponent.CastToSlider = function(self) end

---Casts this component to KeyBind
---@return KeyBind
MenuComponent.CastToKeyBind = function(self) end

---Casts this component to Menu
---@return Menu
MenuComponent.CastToMenu = function(self) end

