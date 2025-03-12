---Slider.
---@class Slider : MenuComponent
---@field value integer
Slider = {}

---Permashow this item. If not necessary , **overrideSave** should be **false.**
---@param show boolean #Should draw permashow.
---@param overrideSave boolean #Force permashow even if save is exist.
Slider.PermaShow = function(self, show, overrideSave) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
Slider.AddTooltip = function(self, tooltipString) end

