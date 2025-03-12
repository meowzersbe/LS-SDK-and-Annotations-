---ColorPicker.
---@class ColorPicker : MenuComponent
---@field value color
---@field boolValue boolean
ColorPicker = {}

---Permashow this item. If not necessary , **overrideSave** should be **false.**
---@param show boolean #Should draw permashow.
---@param overrideSave boolean #Force permashow even if save is exist.
ColorPicker.PermaShow = function(self, show, overrideSave) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
ColorPicker.AddTooltip = function(self, tooltipString) end

