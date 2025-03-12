---CheckBox.
---@class CheckBox : MenuComponent
---@field value boolean
CheckBox = {}

---Permashow this item. If not necessary , **overrideSave** should be **false.**
---@param show boolean #Should draw permashow.
---@param overrideSave boolean #Force permashow even if save is exist.
CheckBox.PermaShow = function(self, show, overrideSave) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
CheckBox.AddTooltip = function(self, tooltipString) end

