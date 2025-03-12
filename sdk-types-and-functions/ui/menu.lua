---Root Menu.
---@class Menu : MenuComponent
---@field page integer
---@field isVisible boolean
Menu = {}

---Create and returns a root menu item.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param page number #Base menu page.
---@return Menu
Menu.CreateMenu = function(self, name, displayName, page) end

---Add tooltip to this element.
---@param tooltipString string #Tooltip string.
Menu.AddTooltip = function(self, tooltipString) end

---Create and returns sub menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@return Menu
Menu.AddMenu = function(self, name, displayName) end

---Add a checkbox to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param defaultValue boolean #Default value.
---@param callback function #Callback when value change.
---@return CheckBox
Menu.AddCheckBox = function(self, name, displayName, defaultValue, callback) end

---Add a colorpicker to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param defaultValue color #Default color value.
---@param hasCheckBox boolean #Has checkbox
---@param checkBoxDefaultValue boolean #Checkbox default value.
---@param callback function #Callback when value change.
---@return ColorPicker
Menu.AddColorPicker = function(self, name, displayName, defaultValue, hasCheckBox, checkBoxDefaultValue, callback) end

---Add an info text to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
Menu.AddInfo = function(self, name, displayName) end

---Add a keybind to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param key number #(unsigned char) Key.
---@param defaultValue boolean #Default value.
---@param isToggle boolean #Is toggle.
---@param callback? function #Callback when value change.
---@return KeyBind
Menu.AddKeyBind = function(self, name, displayName, key, defaultValue, isToggle, callback) end

---Add a list to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param items string table #Select items.
---@param defaultValue integer #Default select value.
---@param callback function #Callback when value change.
---@return List
Menu.AddList = function(self, name, displayName, items, defaultValue, callback) end

---Add a slider to menu.
---@param name string #Internal name.
---@param displayName string #Display name.
---@param defaultValue integer #Default value.
---@param minimumValue integer #Minimum value.
---@param maximumValue integer #Maximum value.
---@param step integer #Slider step per pix.
---@param callback function #Callback when value change.
---@return Slider
Menu.AddSlider = function(self, name, displayName, defaultValue, minimumValue, maximumValue, step, callback) end

