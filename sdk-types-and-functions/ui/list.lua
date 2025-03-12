---List
---@class List : MenuComponent
---@field value integer
---@field items string[] #(std::vector<string>)
List = {}

---Permashow this item. If not necessary , **overrideSave** should be **false.**
---@param show boolean #Should draw permashow.
---@param overrideSave boolean #Force permashow even if save is exist.
List.PermaShow = function(self, show, overrideSave) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
List.AddTooltip = function(self, tooltipString) end

