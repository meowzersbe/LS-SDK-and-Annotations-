---KeyBind.
---@class KeyBind : MenuComponent
---@field value integer
---@field key integer
---@field isToggle boolean
KeyBind = {}

---Permashow this item. If not necessary , **overrideSave** should be **false.**‌
---@param show boolean #Should draw permashow.
---@param overrideSave boolean #Force permashow even if save is exist.
KeyBind.PermaShow = function(self, show, overrideSave) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
KeyBind.AddTooltip = function(self, tooltipString) end

